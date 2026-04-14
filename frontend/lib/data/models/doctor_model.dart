import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

enum VerificationStatus {
  @JsonValue('pending')   pending,
  @JsonValue('verified')  verified,
  @JsonValue('rejected')  rejected,
  @JsonValue('unknown')   unknown;

  bool get isVerified => this == VerificationStatus.verified;
  bool get isPending  => this == VerificationStatus.pending;
}

@freezed
class Doctor with _$Doctor {
  const Doctor._();

  const factory Doctor({
    required String             id,
    required String             name,
    required String             specialty,
    @JsonKey(name: 'license_number') required String licenseNumber,
    @JsonKey(name: 'verification_status')
        required VerificationStatus verificationStatus,
    @JsonKey(name: 'years_experience') @Default(0) int yearsExperience,
    @Default(0.0) double rating,
    @JsonKey(name: 'review_count') @Default(0) int reviewCount,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'available_days') @Default([]) List<String> availableDays,
    @JsonKey(name: 'next_available_slot') DateTime? nextAvailableSlot,
    String? bio,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) =>
      _$DoctorFromJson(json);

  // ── Computed ──────────────────────────────────────────────────
  String get initials {
    // "Dr. Kwame Asante" → "KA" (skip the "Dr." prefix)
    final parts = name.replaceFirst(RegExp(r'^Dr\.?\s+', caseSensitive: false), '')
        .trim()
        .split(' ');
    if (parts.length >= 2) {
      return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
    }
    return parts.isNotEmpty ? parts.first[0].toUpperCase() : '?';
  }

  String get displayRating => rating.toStringAsFixed(1);
}