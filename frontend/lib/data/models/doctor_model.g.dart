// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Doctor _$DoctorFromJson(Map<String, dynamic> json) => _Doctor(
      id: json['id'] as String,
      name: json['name'] as String,
      specialty: json['specialty'] as String,
      licenseNumber: json['license_number'] as String,
      verificationStatus:
          $enumDecode(_$VerificationStatusEnumMap, json['verification_status']),
      yearsExperience: (json['years_experience'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['review_count'] as num?)?.toInt() ?? 0,
      avatarUrl: json['avatar_url'] as String?,
      availableDays: (json['available_days'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      nextAvailableSlot: json['next_available_slot'] == null
          ? null
          : DateTime.parse(json['next_available_slot'] as String),
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$DoctorToJson(_Doctor instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'specialty': instance.specialty,
      'license_number': instance.licenseNumber,
      'verification_status':
          _$VerificationStatusEnumMap[instance.verificationStatus]!,
      'years_experience': instance.yearsExperience,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'avatar_url': instance.avatarUrl,
      'available_days': instance.availableDays,
      'next_available_slot': instance.nextAvailableSlot?.toIso8601String(),
      'bio': instance.bio,
    };

const _$VerificationStatusEnumMap = {
  VerificationStatus.pending: 'pending',
  VerificationStatus.verified: 'verified',
  VerificationStatus.rejected: 'rejected',
  VerificationStatus.unknown: 'unknown',
};
