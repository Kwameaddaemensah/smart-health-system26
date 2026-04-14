// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicalRecord _$MedicalRecordFromJson(Map<String, dynamic> json) =>
    _MedicalRecord(
      id: json['id'] as String,
      patientId: json['patient_id'] as String,
      type: $enumDecode(_$RecordTypeEnumMap, json['type']),
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      doctorName: json['doctor_name'] as String?,
      fileUrl: json['file_url'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$MedicalRecordToJson(_MedicalRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patient_id': instance.patientId,
      'type': _$RecordTypeEnumMap[instance.type]!,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'doctor_name': instance.doctorName,
      'file_url': instance.fileUrl,
      'notes': instance.notes,
    };

const _$RecordTypeEnumMap = {
  RecordType.lab: 'lab',
  RecordType.prescription: 'prescription',
  RecordType.visit: 'visit',
  RecordType.imaging: 'imaging',
  RecordType.other: 'other',
};
