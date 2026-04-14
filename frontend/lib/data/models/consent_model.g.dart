// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Consent _$ConsentFromJson(Map<String, dynamic> json) => _Consent(
      id: json['id'] as String,
      doctorId: json['doctor_id'] as String,
      doctorName: json['doctor_name'] as String,
      patientId: json['patient_id'] as String,
      status: $enumDecode(_$ConsentStatusEnumMap, json['status']),
      grantedAt: json['granted_at'] == null
          ? null
          : DateTime.parse(json['granted_at'] as String),
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      recordTypes: (json['record_types'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ConsentToJson(_Consent instance) => <String, dynamic>{
      'id': instance.id,
      'doctor_id': instance.doctorId,
      'doctor_name': instance.doctorName,
      'patient_id': instance.patientId,
      'status': _$ConsentStatusEnumMap[instance.status]!,
      'granted_at': instance.grantedAt?.toIso8601String(),
      'expires_at': instance.expiresAt?.toIso8601String(),
      'record_types': instance.recordTypes,
    };

const _$ConsentStatusEnumMap = {
  ConsentStatus.pending: 'pending',
  ConsentStatus.granted: 'granted',
  ConsentStatus.denied: 'denied',
  ConsentStatus.expired: 'expired',
  ConsentStatus.revoked: 'revoked',
};
