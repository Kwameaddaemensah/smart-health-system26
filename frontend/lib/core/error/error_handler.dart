// lib/core/error/error_handler.dart
//
// WHAT: One place that converts raw exceptions into typed Failure objects.
// Every repository's catch block calls ErrorHandler.handle(e).
// If you ever need to change how network errors are displayed,
// you change ONE method — not every repository file.

import 'dart:io';
import 'package:dio/dio.dart';
import 'failure.dart';

abstract final class ErrorHandler {
  /// Converts any exception into a typed [Failure].
  /// Call this from repository catch blocks.
  static Failure handle(Object error) {
    if (error is DioException) return _handleDio(error);
    if (error is SocketException) return const NoConnectionFailure();
    if (error is Failure) return error; // already typed, pass through
    return UnexpectedFailure(message: error.toString());
  }

  static Failure _handleDio(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure(
          message: 'Connection timed out. Check your internet and try again.',
        );

      case DioExceptionType.connectionError:
        return const NoConnectionFailure();

      case DioExceptionType.badResponse:
        return _handleResponse(e.response!);

      case DioExceptionType.cancel:
        return const NetworkFailure(message: 'Request was cancelled.');

      default:
        return NetworkFailure(
          message: e.message ?? 'A network error occurred.',
        );
    }
  }

  static Failure _handleResponse(Response<dynamic> response) {
    final data   = response.data;
    final code   = response.statusCode ?? 0;
    final detail = _extractMessage(data);

    return switch (code) {
      401 => const UnauthorizedFailure(),
      403 => ServerFailure(
               message: 'You do not have permission to do that.',
               statusCode: 403,
             ),
      404 => ServerFailure(
               message: 'The requested resource was not found.',
               statusCode: 404,
             ),
      422 => ServerFailure(
               message: 'Please check the information you entered.',
               statusCode: 422,
               errors: data is Map<String, dynamic>
                   ? data['errors'] as Map<String, dynamic>?
                   : null,
             ),
      >= 500 => ServerFailure(
                  message: 'Server error. Please try again later.',
                  statusCode: code,
                ),
      _ => ServerFailure(message: detail, statusCode: code),
    };
  }

  static String _extractMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      // Django REST Framework returns 'detail' or 'message'
      return (data['detail'] ?? data['message'] ?? 'Something went wrong.')
          .toString();
    }
    return 'Something went wrong.';
  }
}