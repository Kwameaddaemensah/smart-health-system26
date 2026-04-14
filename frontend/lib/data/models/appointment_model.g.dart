// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Appointment _$$AppointmentFromJson(Map<String, dynamic> json) =>
    _$Appointment(
      id: json['id'] as String,
      doctorId: json['doctor_id'] as String,
      doctorName: json['doctor_name'] as String,
      specialty: json['specialty'] as String,
      scheduledAt: DateTime.parse(json['scheduled_at'] as String),
      status: $enumDecode(_$AppointmentStatusEnumMap, json['status']),
      patientNotes: json['patient_notes'] as String?,
      doctorNotes: json['doctor_notes'] as String?,
      locationName: json['location_name'] as String?,
      durationMinutes: (json['duration_minutes'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$$AppointmentToJson(_$Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor_id': instance.doctorId,
      'doctor_name': instance.doctorName,
      'specialty': instance.specialty,
      'scheduled_at': instance.scheduledAt.toIso8601String(),
      'status': _$AppointmentStatusEnumMap[instance.status]!,
      'patient_notes': instance.patientNotes,
      'doctor_notes': instance.doctorNotes,
      'location_name': instance.locationName,
      'duration_minutes': instance.durationMinutes,
    };

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.pending: 'pending',
  AppointmentStatus.confirmed: 'confirmed',
  AppointmentStatus.completed: 'completed',
  AppointmentStatus.cancelled: 'cancelled',
  AppointmentStatus.noShow: 'no_show',
  AppointmentStatus.unknown: 'unknown',
};
