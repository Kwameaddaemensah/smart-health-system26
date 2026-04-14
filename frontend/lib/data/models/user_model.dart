// WHAT: Freeze
// 1. Immutability — a User cannot be mutated accidentally after creation
// 2. copyWith — creates a modified copy: user.copyWith(name: 'Ama')
// 3. Equality — two Users with the same fields are == without boilerplate
// 4. JSON — fromJson/toJson generated automatically
//
// The field names MUST match the openapi.yaml User schema exactly.
// If the backend dev renames 'avatar_url' to 'profile_picture',
// you update @JsonKey(name: ...) here — one change, everywhere.

import 'package:freezed_annotation/freezed_annotation.dart';

// These two lines are required by Freezed code generation.
// The generator reads them to know what files to produce.
part 'user_model.freezed.dart';
part 'user_model.g.dart';

// ── Role enum ─────────────────────────────────────────────────────────
enum UserRole {
  @JsonValue('patient')  patient,
  @JsonValue('doctor')   doctor,
  @JsonValue('admin')    admin,
  @JsonValue('unknown')  unknown; // Fallback - never crash on new roles

  // Helper used in the router to decide which shell to show
  bool get isPatient => this == UserRole.patient;
  bool get isDoctor => this == UserRole.doctor;
  bool get isAdmin => this == UserRole.admin;
}

// ── User model ────────────────────────────────────────────────────────
@freezed
class User with _$User {
  const User._(); // required for custom methods on Freezed classes

  const factory User({
    required String id,
    required String email,
    required String name,
    required String role,

    // snake_case in JSON → camelCase in Dart (handled by Freezed)
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>_$UserFromJson(json);

  /// First name extracted from full name — for greeting display
  String get firstName {
    final parts = name.trim().split(' ');
    return parts.isNotEmpty ? parts.first : name;
  }

  /// Initials for avatar placeholder (e.g. "Kwame Mensah" → "KM")
  String get initials {
    final parts = name.trim().split(' ');

    if(parts.length >= 2) {
      return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
    }

    return name.isNotEmpty ? name[0].toUpperCase() : '?';
  }
}
