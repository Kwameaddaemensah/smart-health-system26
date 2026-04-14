// WHAT: Separate request/response authentication models:
// The API payload shape is NOT the same as the domain model.
// LoginRequest is what we SEND. AuthResponse is what we RECEIVE.
// User is our clean domain object.
// Mixing them creates tight coupling that breaks whenever the
// API changes its request format.

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

// ── Request models (what Flutter sends to the API) ────────────────────
@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
    _LoginRequestFromJson(json);
}

@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String name,
    required String email,
    required String password,
    required String role,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
    _RegisterRequestFromJson(json);
}

@freezed 
class OtpVerifyRequest with _$OtpVerifyRequest {
  const factory OtpVerifyRequest ({
    required String email,
    required String otp,
  }) = _OtpVerifyRequest;

  factory OtpVerifyRequest.fromJson(Map<String, dynamic> json) =>
    _OtpVerifyRequest(json);
}


// ── Response models (what the API sends back) ─────────────────────────
@freezed 
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String access, // JWT access token
    required String refresh, // JWT refresh token
    required String user, 
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
    _$AuthResponseFromJson(json);
}