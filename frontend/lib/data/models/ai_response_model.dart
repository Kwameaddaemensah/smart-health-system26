// WHAT: Server-sent Events
// Models the Server-Sent Events (SSE) stream from the AI service.
// The AI sends multiple events: incremental text tokens, then a final
// 'done' event with structured metadata (urgency, specialties, etc.)
//
// Flutter reads these as a Stream<AiStreamEvent> and renders each
// token as it arrives — the same technique as Claude's own interface.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_response_model.freezed.dart';
part 'ai_response_model.g.dart';

enum UrgencyLevel {
  @JsonValue('low')       low,
  @JsonValue('medium')    medium,
  @JsonValue('high')      high,
  @JsonValue('emergency') emergency;

  bool get isEmergency => this == UrgencyLevel.emergency;
  bool get requiresUrgentCare =>
      this == UrgencyLevel.high || this == UrgencyLevel.emergency;
}

// Sealed union — either a text token chunk or the final done event
@freezed
sealed class AiStreamEvent with _$AiStreamEvent {
  // A chunk of text to append to the message bubble
  const factory AiStreamEvent.token({
    required String content,
  }) = AiTokenEvent;

  // The final event — carries metadata used for the booking CTA
  const factory AiStreamEvent.done({
    required UrgencyLevel       urgency,
    @JsonKey(name: 'suggested_specialties')
        @Default([]) List<String>  suggestedSpecialties,
    @JsonKey(name: 'recommends_visit')
        @Default(true) bool        recommendsVisit,
    @JsonKey(name: 'is_emergency')
        @Default(false) bool       isEmergency,
    @JsonKey(name: 'emergency_warning') String? emergencyWarning,
  }) = AiDoneEvent;

  factory AiStreamEvent.fromJson(Map<String, dynamic> json) =>
      _$AiStreamEventFromJson(json);
}

// A complete AI message after streaming finishes
@freezed
class AiMessage with _$AiMessage {
  const factory AiMessage({
    required String       fullText,
    required AiDoneEvent  metadata,
    required DateTime     receivedAt,
  }) = _AiMessage;

  factory AiMessage.fromJson(Map<String, dynamic> json) =>
      _$AiMessageFromJson(json);
}