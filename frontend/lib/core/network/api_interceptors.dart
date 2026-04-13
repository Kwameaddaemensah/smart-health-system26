// Four interceptors, each with one responsibility:
//
// 1. AuthInterceptor  — injects JWT, handles 401, refreshes token
// 2. RetryInterceptor — retries once on network timeout or 5xx
// 3. ErrorInterceptor — converts DioException to AppException
// 4. LoggingInterceptor — pretty-prints requests/responses (debug only)

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../storage/secure_storage.dart';
import '../constants/api_constants.dart';

// ─────────────────────────────────────────────────────────────────────
// 1. AUTH INTERCEPTOR
// ─────────────────────────────────────────────────────────────────────
//
// WHAT: A mutex (_isRefreshing flag + _pendingRequests queue):
// Imagine the user opens the app after the token expired.
// Three screens load simultaneously — each fires an API request.
// All three get 401. Without a mutex, all three try to refresh
// the token. The second and third refresh calls fail because
// Django's SimpleJWT marks the refresh token as used after the
// first call. Result: two of three screens crash and the user
// sees random errors.
//
// WITH the mutex:
// - First 401 sets _isRefreshing = true and starts the refresh
// - Second and third 401s see _isRefreshing == true and add
//   themselves to _pendingRequests (a list of Completers)
// - When the refresh succeeds, we complete all pending requests
//   with the new token and they retry automatically
// - If the refresh fails, we complete all pending requests with
//   an error and the user is sent to the login screen once

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._ref);

  final Ref _ref;

  // Mutex state
  bool _isRefreshing = false;

  final List<Completer<String>> _pendingRequests = [];

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Skips auth header for the token refresh endpoint itself —
    // that call uses the refresh token in the body, not Bearer
    if(options.path == ApiConstants.tokenRefresh) {
      return handler.next(options);
    }

    final token = await _ref.read(secureStorageProvider).getAccessToken();
    if(token == null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Only intercept 401 Unauthorized
    if(err.response?.statusCode != 401) {
      return handler.next(err);
    }

    if (_isRefreshing) {
      // Another request is already refreshing — queue this one
      final completer = Completer<String>();
      _pendingRequests.add(completer);

      try {
        // Wait for the ongoing refresh to complete
        final newToken = await completer.future;

        // Retry with the fresh token
        err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
        final response = await _retry(err.requestOptions);
        return handler.resolve(response);
      } catch (_) {
        return handler.next(err);
      }
    }

    // This request is first — it owns the refresh
    _isRefreshing = true;

    try {
      final newAccessToken = await _refreshToken();

      // Complete all queued requests with the new token
      for(final pending in _pendingRequests) {
        pending.complete(newAccessToken);
      }
      _pendingRequests.clear();

      // Retry the original request with the new token
      err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
      final response = await _retry(err.requestOptions);
      return handler.resolve(response);
    } catch (_) {
      // Refresh failed — complete all pending requests with error
      for (final pending in _pendingRequests) {
        pending.completeError('Refresh failed');
      }
      _pendingRequests.clear();

      // Force the user back to login
      await _forceLogout();
      return handler.next(err);
    } finally {
      _isRefreshing = false;
    }
  }

  Future<String> _refreshToken() async {
    final storage = _ref.read(secureStorageProvider);
    final refreshToken = await storage.getRefreshToken();

    if(refreshToken == null) throw Exception('No refresh token');

    // Using a fresh Dio instance and not the intercepted one —
    // to avoid the interceptor calling itself recursively
    final dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
    final response = await dio.post<dynamic>(
      ApiConstants.tokenRefresh,
      data: {'refresh': refreshToken},
    );

    final newAccess = response.data['access'] as String;
    final newRefresh = response.data['refresh'] as String? ?? refreshToken;

    await storage.saveTokens(
      accessToken: newAccess,
      refreshToken: newRefresh
      );
      return newAccess;
  }

  Future<Response<dynamic>> _retry(RequestOptions options) {
    final dio = Dio(BaseOptions(baseUrl: options.baseUrl));
    return dio.fetch(options);
  }

  Future<void> _forceLogout() async {
    final storage = _ref.read(secureStorageProvider);
    await storage.clearAll();
    // The router watches auth state — clearing storage triggers
    // a redirect to login automatically. No manual navigation needed.
  }
}

// ─────────────────────────────────────────────────────────────────────
// 2. RETRY INTERCEPTOR
// ─────────────────────────────────────────────────────────────────────
//
// WHAT retry:
// Mobile networks could be variable. A single timeout doesn't
// always mean the server is down — often the radio just hiccupped.
// One automatic retry on timeout or 5xx errors recovers most of these.
//
// WHY only one retry:
// More retries mask real server problems. If the server is down,
// retrying 3 times just delays showing the user a real error message.

class RetryInterceptor extends Interceptor {
  RetryInterceptor(this._dio);

  final Dio _dio;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final shouldRetry = 
    err.type == DioExceptionType.connectionTimeout ||
    err.type == DioExceptionType.receiveTimeout ||
    err.type == DioExceptionType.sendTimeout ||
    (err.response?.statusCode ?? 0) >= 500;

    // 'Retried' flag prevents infinite retry loops
    final alreadyTried = 
      err.requestOptions.extra['retried'] == true;

    if (shouldRetry && !alreadyTried) {
      // Mark as retried before the retry attempt
      err.requestOptions.extra['retried'] = true;

      try {
        final response = await _dio.fetch<dynamic>(err.requestOptions);
        return handler.resolve(response);
      } on DioException catch (retryErr) {
        // Retry also failed — pass the retry error downstream
        return handler.next(retryErr);
      }
    }

    handler.next(err);
  }
}

// ─────────────────────────────────────────────────────────────────────
// 3. ERROR INTERCEPTOR
// ─────────────────────────────────────────────────────────────────────
//
// WHAT: A dedicated error interceptor:
// Converts the Dio-specific DioException into a structured error
// that the rest of the app understands. Repositories never import
// Dio — they only see AppException or Failure types.

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // An error is passed through as-is — the ErrorHandler in each
    // repository converts it to the appropriate Failure type.
    // This interceptor is a hook for future global error logging.

    handler.next(err);
  }
}

// 
// WHAT: LOGGING INTERCEPTOR (debug builds only)
//
// WHY not use Dio's built-in LogInterceptor:
// The built-in logger dumps everything — including tokens — in plain text.
// This interceptor redacts the Authorization header so tokens never
// appear in logs, even in development.

class LoggingInterceptor extends Interceptor {
  static const _reset = '\x1B[0m';
  static const _cyan   = '\x1B[36m';
  static const _green  = '\x1B[32m';
  static const _red    = '\x1B[31m';
  static const _yellow = '\x1B[33m';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final method = options.method.toUpperCase();
    final path = options.uri.toString();

    // Redact the token — never log credentials
    final headers = Map<String, dynamic>.from(options.headers);

    if(headers.containsKey('Authorization')) {
      headers['Authorization'] = 'Bearer [REDACTED]';
    }

    _log('$_cyan-> $method $_reset$path');
    if(options.data != null) {
      _log(' body: ${options.data}');
    }

    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler
  ) {
    final code = response.statusCode;
    final path = response.requestOptions.uri.toString();
    final color = (code != null && code < 400) ? _green : _yellow;

    _log('$color<- $code $_reset$path');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final code = err.response?.statusCode ?? 0;
    final path = err.requestOptions.uri.toString();

    _log('$_red $code $_reset$path - ${err.message}');

    handler.next(err);
  }

  void _log(String message) {
    print('[SmartHealth] $message$_reset');
  }
}