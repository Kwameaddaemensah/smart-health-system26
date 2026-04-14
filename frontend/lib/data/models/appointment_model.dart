import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

// ── Status enum ───────────────────────────────────────────────────────
enum AppointmentStatus {
  @JsonValue('pending')    pending,
  @JsonValue('confirmed')  confirmed,
  @JsonValue('completed')  completed,
  @JsonValue('cancelled')  cancelled,
  @JsonValue('no_show')    noShow,
  @JsonValue('unknown')    unknown;

  /// Whether this appointment is still actionable by the patient
  bool get isActive =>
    this == AppointmentStatus.pending ||
    this == AppointmentStatus.confirmed;

  bool get isPast =>
    this == AppointmentStatus.completed ||
    this == AppointmentStatus.noShow;
}

@freezed 
class Appointment with _$Appointment {
  const Appointment._(); // required for custom methods on Freezed classes

  const factory Appointment({
    required String            id,
    @JsonKey(name: 'doctor_id')   required String doctorId,
    @JsonKey(name: 'doctor_name') required String doctorName,

    required String            specialty,
    @JsonKey(name: 'scheduled_at') required DateTime scheduledAt,

    required AppointmentStatus status,
    @JsonKey(name: 'patient_notes') String? patientNotes,
    @JsonKey(name: 'doctor_notes')  String? doctorNotes,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'duration_minutes') @Default(30) int durationMinutes,
  }) = _$Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
    _$AppointmentFromJson(json);

  // ── Computed ──────────────────────────────────────────────────
  DateTime get endTime =>
    scheduledAt.add(Duration(minutes: durationMinutes));

  bool get isToday {
    final now = DateTime.now();
    return scheduledAt.year == now.year &&
           scheduledAt.month == now.month &&
           scheduledAt.day == now.day;
  }

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return scheduledAt.year == tomorrow.year &&
           scheduledAt.month == tomorrow.month &&
           scheduledAt.day == tomorrow.day;
  }
}