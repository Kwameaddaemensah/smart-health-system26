
// WHAT: Dio over http
// Dio supports: interceptors, streaming responses (AI chat), request
// cancellation, multipart file uploads (record upload), and response
// type control. The http package does none of these out of the box.
//
// WHY two Dio instances:
// The backend Django API and the AI FastAPI service have different
// base URLs and different auth requirements. Mixing them in one
// instance causes interceptor conflicts. One Dio per service.

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/api_constants.dart';
import 'api_interceptors.dart';

// ── Providers ─────────────────────────────────────────────────────────
/// Main Django API client — used by all non-AI datasources

final apiClientProvider = Provider<Dio> ((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: ApiConstants.connectTimeout,
      receiveTimeout: ApiConstants.receiveTimeout,
      sendTimeout: ApiConstants.sendTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

   // Interceptor ORDER running in the order added
   dio.interceptors.addAll([
    AuthInterceptor(ref), //1. Injects Bearer token
    RetryInterceptor(dio), // 2. Retry once time out
    ErrorInterceptor(), // 3. Map DioException -> AppException
    if(_isDebug) LoggingInterceptor(),
   ]);

   return dio;
});

/// AI FastAPI client — used only by AiRemoteDatasource
/// No auth interceptor — the AI service validates tokens differently
final aiClientProvider = Provider<Dio> ((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.aiBaseUrl,
      connectTimeout: ApiConstants.connectTimeout,
      receiveTimeout: const Duration(seconds: 90), // Could encounter slow AI streaming
      sendTimeout: ApiConstants.sendTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json', //Server-sent events for streaming
      }
    )
  );

  dio.interceptors.addAll([
    AuthInterceptor(ref), // AI services validates JWT
    ErrorInterceptor(),
    if(_isDebug) LoggingInterceptor(),

  ]);
  return dio;
});

// compile-time debug flag
const bool _isDebug = !bool.fromEnvironment('dart.vm.product');