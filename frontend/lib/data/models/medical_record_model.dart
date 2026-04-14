import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_record_model.freezed.dart';
part 'medical_record_model.g.dart';

enum RecordType {
  @JsonValue('lab')          lab,
  @JsonValue('prescription') prescription,
  @JsonValue('visit')        visit,
  @JsonValue('imaging')      imaging,
  @JsonValue('other')        other;

  String get displayName => switch (this) {
    RecordType.lab          => 'Lab result',
    RecordType.prescription => 'Prescription',
    RecordType.visit        => 'Visit note',
    RecordType.imaging      => 'Imaging',
    RecordType.other        => 'Document',
  };
}

@freezed
class MedicalRecord with _$MedicalRecord {
  const MedicalRecord._();

  const factory MedicalRecord({
    required String     id,
    @JsonKey(name: 'patient_id') required String patientId,
    required RecordType type,
    required String     title,
    required DateTime   date,
    @JsonKey(name: 'doctor_name') String? doctorName,
    @JsonKey(name: 'file_url')    String? fileUrl,  // pre-signed S3 URL
    String? notes,
  }) = _MedicalRecord;

  factory MedicalRecord.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordFromJson(json);

  bool get hasFile => fileUrl != null && fileUrl!.isNotEmpty;
}