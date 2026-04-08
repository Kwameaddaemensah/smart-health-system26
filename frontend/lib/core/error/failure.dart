// lib/core/error/failure.dart
//
// WHAT: A sealed class with one variant per error category.
// Using a sealed union forces every screen that shows errors to handle
// ALL possible failure types at compile time. You cannot "forget" to
// handle the no-connection case — the compiler won't let you.
//
// Sealed classes require Dart 3.0+ — we're on >=3.3.0 so we're fine.

import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  const Failure(this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}

// ── Network-level failure (timeout, no connection) ───────────────────
final class NetworkFailure extends Failure {
  const NetworkFailure({
    String message = 'Connection failed. Check your internet.',
    this.statusCode,
  }) : super(message);

  final int? statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

// ── Server returned a meaningful error (4xx / 5xx) ───────────────────
final class ServerFailure extends Failure {
  const ServerFailure({
    required String message,
    required this.statusCode,
    this.errors,             // Django validation errors map
  }) : super(message);

  final int statusCode;
  final Map<String, dynamic>? errors;

  @override
  List<Object?> get props => [message, statusCode, errors];
}

// ── JWT expired or invalid (401) ─────────────────────────────────────
final class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({
    String message = 'Session expired. Please sign in again.',
  }) : super(message);
}

// ── No internet at all ───────────────────────────────────────────────
final class NoConnectionFailure extends Failure {
  const NoConnectionFailure()
      : super('No internet connection.');
}

// ── Local cache miss or parsing error ────────────────────────────────
final class CacheFailure extends Failure {
  const CacheFailure({String message = 'Could not load local data.'})
      : super(message);
}

// ── Any other unexpected failure ─────────────────────────────────────
final class UnexpectedFailure extends Failure {
  const UnexpectedFailure({
    String message = 'Something went wrong.',
  }) : super(message);
}