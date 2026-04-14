// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiTokenEvent _$AiTokenEventFromJson(Map<String, dynamic> json) => AiTokenEvent(
      content: json['content'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AiTokenEventToJson(AiTokenEvent instance) =>
    <String, dynamic>{
      'content': instance.content,
      'runtimeType': instance.$type,
    };

AiDoneEvent _$AiDoneEventFromJson(Map<String, dynamic> json) => AiDoneEvent(
      urgency: $enumDecode(_$UrgencyLevelEnumMap, json['urgency']),
      suggestedSpecialties: (json['suggested_specialties'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      recommendsVisit: json['recommends_visit'] as bool? ?? true,
      isEmergency: json['is_emergency'] as bool? ?? false,
      emergencyWarning: json['emergency_warning'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AiDoneEventToJson(AiDoneEvent instance) =>
    <String, dynamic>{
      'urgency': _$UrgencyLevelEnumMap[instance.urgency]!,
      'suggested_specialties': instance.suggestedSpecialties,
      'recommends_visit': instance.recommendsVisit,
      'is_emergency': instance.isEmergency,
      'emergency_warning': instance.emergencyWarning,
      'runtimeType': instance.$type,
    };

const _$UrgencyLevelEnumMap = {
  UrgencyLevel.low: 'low',
  UrgencyLevel.medium: 'medium',
  UrgencyLevel.high: 'high',
  UrgencyLevel.emergency: 'emergency',
};

_AiMessage _$AiMessageFromJson(Map<String, dynamic> json) => _AiMessage(
      fullText: json['fullText'] as String,
      metadata: AiDoneEvent.fromJson(json['metadata'] as Map<String, dynamic>),
      receivedAt: DateTime.parse(json['receivedAt'] as String),
    );

Map<String, dynamic> _$AiMessageToJson(_AiMessage instance) =>
    <String, dynamic>{
      'fullText': instance.fullText,
      'metadata': instance.metadata,
      'receivedAt': instance.receivedAt.toIso8601String(),
    };
