import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_model.freezed.dart';
part 'consent_model.g.dart';

enum ConsentStatus {
  @JsonValue('pending')  pending,
  @JsonValue('granted')  granted,
  @JsonValue('denied')   denied,
  @JsonValue('expired')  expired,
  @JsonValue('revoked')  revoked;

  bool get isActive => this == ConsentStatus.granted;
}

@freezed
class Consent with _$Consent {
  const Consent._();

  const factory Consent({
    required String        id,
    @JsonKey(name: 'doctor_id')   required String doctorId,
    @JsonKey(name: 'doctor_name') required String doctorName,
    @JsonKey(name: 'patient_id')  required String patientId,
    required ConsentStatus status,
    @JsonKey(name: 'granted_at')  DateTime? grantedAt,
    @JsonKey(name: 'expires_at')  DateTime? expiresAt,
    @JsonKey(name: 'record_types') @Default([]) List<String> recordTypes,
  }) = _Consent;

  factory Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);

  // ── Computed ──────────────────────────────────────────────────
  bool get isExpired {
    if (expiresAt == null) return false;
    return DateTime.now().isAfter(expiresAt!);
  }

  Duration? get remainingTime {
    if (expiresAt == null || isExpired) return null;
    return expiresAt!.difference(DateTime.now());
  }

  String get remainingTimeDisplay {
    final remaining = remainingTime;
    if (remaining == null) return 'Expired';
    final hours   = remaining.inHours;
    final minutes = remaining.inMinutes.remainder(60);
    return '${hours}h ${minutes.toString().padLeft(2, '0')}m';
  }
}