// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AiStreamEvent _$AiStreamEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'token':
      return AiTokenEvent.fromJson(json);
    case 'done':
      return AiDoneEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AiStreamEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AiStreamEvent {
  /// Serializes this AiStreamEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AiStreamEvent);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AiStreamEvent()';
  }
}

/// @nodoc
class $AiStreamEventCopyWith<$Res> {
  $AiStreamEventCopyWith(AiStreamEvent _, $Res Function(AiStreamEvent) __);
}

/// Adds pattern-matching-related methods to [AiStreamEvent].
extension AiStreamEventPatterns on AiStreamEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AiTokenEvent value)? token,
    TResult Function(AiDoneEvent value)? done,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AiTokenEvent() when token != null:
        return token(_that);
      case AiDoneEvent() when done != null:
        return done(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AiTokenEvent value) token,
    required TResult Function(AiDoneEvent value) done,
  }) {
    final _that = this;
    switch (_that) {
      case AiTokenEvent():
        return token(_that);
      case AiDoneEvent():
        return done(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AiTokenEvent value)? token,
    TResult? Function(AiDoneEvent value)? done,
  }) {
    final _that = this;
    switch (_that) {
      case AiTokenEvent() when token != null:
        return token(_that);
      case AiDoneEvent() when done != null:
        return done(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? token,
    TResult Function(
            UrgencyLevel urgency,
            @JsonKey(name: 'suggested_specialties')
            List<String> suggestedSpecialties,
            @JsonKey(name: 'recommends_visit') bool recommendsVisit,
            @JsonKey(name: 'is_emergency') bool isEmergency,
            @JsonKey(name: 'emergency_warning') String? emergencyWarning)?
        done,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AiTokenEvent() when token != null:
        return token(_that.content);
      case AiDoneEvent() when done != null:
        return done(_that.urgency, _that.suggestedSpecialties,
            _that.recommendsVisit, _that.isEmergency, _that.emergencyWarning);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) token,
    required TResult Function(
            UrgencyLevel urgency,
            @JsonKey(name: 'suggested_specialties')
            List<String> suggestedSpecialties,
            @JsonKey(name: 'recommends_visit') bool recommendsVisit,
            @JsonKey(name: 'is_emergency') bool isEmergency,
            @JsonKey(name: 'emergency_warning') String? emergencyWarning)
        done,
  }) {
    final _that = this;
    switch (_that) {
      case AiTokenEvent():
        return token(_that.content);
      case AiDoneEvent():
        return done(_that.urgency, _that.suggestedSpecialties,
            _that.recommendsVisit, _that.isEmergency, _that.emergencyWarning);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? token,
    TResult? Function(
            UrgencyLevel urgency,
            @JsonKey(name: 'suggested_specialties')
            List<String> suggestedSpecialties,
            @JsonKey(name: 'recommends_visit') bool recommendsVisit,
            @JsonKey(name: 'is_emergency') bool isEmergency,
            @JsonKey(name: 'emergency_warning') String? emergencyWarning)?
        done,
  }) {
    final _that = this;
    switch (_that) {
      case AiTokenEvent() when token != null:
        return token(_that.content);
      case AiDoneEvent() when done != null:
        return done(_that.urgency, _that.suggestedSpecialties,
            _that.recommendsVisit, _that.isEmergency, _that.emergencyWarning);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class AiTokenEvent implements AiStreamEvent {
  const AiTokenEvent({required this.content, final String? $type})
      : $type = $type ?? 'token';
  factory AiTokenEvent.fromJson(Map<String, dynamic> json) =>
      _$AiTokenEventFromJson(json);

  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of AiStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AiTokenEventCopyWith<AiTokenEvent> get copyWith =>
      _$AiTokenEventCopyWithImpl<AiTokenEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AiTokenEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AiTokenEvent &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'AiStreamEvent.token(content: $content)';
  }
}

/// @nodoc
abstract mixin class $AiTokenEventCopyWith<$Res>
    implements $AiStreamEventCopyWith<$Res> {
  factory $AiTokenEventCopyWith(
          AiTokenEvent value, $Res Function(AiTokenEvent) _then) =
      _$AiTokenEventCopyWithImpl;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$AiTokenEventCopyWithImpl<$Res> implements $AiTokenEventCopyWith<$Res> {
  _$AiTokenEventCopyWithImpl(this._self, this._then);

  final AiTokenEvent _self;
  final $Res Function(AiTokenEvent) _then;

  /// Create a copy of AiStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
  }) {
    return _then(AiTokenEvent(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class AiDoneEvent implements AiStreamEvent {
  const AiDoneEvent(
      {required this.urgency,
      @JsonKey(name: 'suggested_specialties')
      final List<String> suggestedSpecialties = const [],
      @JsonKey(name: 'recommends_visit') this.recommendsVisit = true,
      @JsonKey(name: 'is_emergency') this.isEmergency = false,
      @JsonKey(name: 'emergency_warning') this.emergencyWarning,
      final String? $type})
      : _suggestedSpecialties = suggestedSpecialties,
        $type = $type ?? 'done';
  factory AiDoneEvent.fromJson(Map<String, dynamic> json) =>
      _$AiDoneEventFromJson(json);

  final UrgencyLevel urgency;
  final List<String> _suggestedSpecialties;
  @JsonKey(name: 'suggested_specialties')
  List<String> get suggestedSpecialties {
    if (_suggestedSpecialties is EqualUnmodifiableListView)
      return _suggestedSpecialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedSpecialties);
  }

  @JsonKey(name: 'recommends_visit')
  final bool recommendsVisit;
  @JsonKey(name: 'is_emergency')
  final bool isEmergency;
  @JsonKey(name: 'emergency_warning')
  final String? emergencyWarning;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of AiStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AiDoneEventCopyWith<AiDoneEvent> get copyWith =>
      _$AiDoneEventCopyWithImpl<AiDoneEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AiDoneEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AiDoneEvent &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            const DeepCollectionEquality()
                .equals(other._suggestedSpecialties, _suggestedSpecialties) &&
            (identical(other.recommendsVisit, recommendsVisit) ||
                other.recommendsVisit == recommendsVisit) &&
            (identical(other.isEmergency, isEmergency) ||
                other.isEmergency == isEmergency) &&
            (identical(other.emergencyWarning, emergencyWarning) ||
                other.emergencyWarning == emergencyWarning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      urgency,
      const DeepCollectionEquality().hash(_suggestedSpecialties),
      recommendsVisit,
      isEmergency,
      emergencyWarning);

  @override
  String toString() {
    return 'AiStreamEvent.done(urgency: $urgency, suggestedSpecialties: $suggestedSpecialties, recommendsVisit: $recommendsVisit, isEmergency: $isEmergency, emergencyWarning: $emergencyWarning)';
  }
}

/// @nodoc
abstract mixin class $AiDoneEventCopyWith<$Res>
    implements $AiStreamEventCopyWith<$Res> {
  factory $AiDoneEventCopyWith(
          AiDoneEvent value, $Res Function(AiDoneEvent) _then) =
      _$AiDoneEventCopyWithImpl;
  @useResult
  $Res call(
      {UrgencyLevel urgency,
      @JsonKey(name: 'suggested_specialties') List<String> suggestedSpecialties,
      @JsonKey(name: 'recommends_visit') bool recommendsVisit,
      @JsonKey(name: 'is_emergency') bool isEmergency,
      @JsonKey(name: 'emergency_warning') String? emergencyWarning});
}

/// @nodoc
class _$AiDoneEventCopyWithImpl<$Res> implements $AiDoneEventCopyWith<$Res> {
  _$AiDoneEventCopyWithImpl(this._self, this._then);

  final AiDoneEvent _self;
  final $Res Function(AiDoneEvent) _then;

  /// Create a copy of AiStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? urgency = null,
    Object? suggestedSpecialties = null,
    Object? recommendsVisit = null,
    Object? isEmergency = null,
    Object? emergencyWarning = freezed,
  }) {
    return _then(AiDoneEvent(
      urgency: null == urgency
          ? _self.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
      suggestedSpecialties: null == suggestedSpecialties
          ? _self._suggestedSpecialties
          : suggestedSpecialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recommendsVisit: null == recommendsVisit
          ? _self.recommendsVisit
          : recommendsVisit // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmergency: null == isEmergency
          ? _self.isEmergency
          : isEmergency // ignore: cast_nullable_to_non_nullable
              as bool,
      emergencyWarning: freezed == emergencyWarning
          ? _self.emergencyWarning
          : emergencyWarning // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$AiMessage {
  String get fullText;
  AiDoneEvent get metadata;
  DateTime get receivedAt;

  /// Create a copy of AiMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AiMessageCopyWith<AiMessage> get copyWith =>
      _$AiMessageCopyWithImpl<AiMessage>(this as AiMessage, _$identity);

  /// Serializes this AiMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AiMessage &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullText,
      const DeepCollectionEquality().hash(metadata), receivedAt);

  @override
  String toString() {
    return 'AiMessage(fullText: $fullText, metadata: $metadata, receivedAt: $receivedAt)';
  }
}

/// @nodoc
abstract mixin class $AiMessageCopyWith<$Res> {
  factory $AiMessageCopyWith(AiMessage value, $Res Function(AiMessage) _then) =
      _$AiMessageCopyWithImpl;
  @useResult
  $Res call({String fullText, AiDoneEvent metadata, DateTime receivedAt});
}

/// @nodoc
class _$AiMessageCopyWithImpl<$Res> implements $AiMessageCopyWith<$Res> {
  _$AiMessageCopyWithImpl(this._self, this._then);

  final AiMessage _self;
  final $Res Function(AiMessage) _then;

  /// Create a copy of AiMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? metadata = freezed,
    Object? receivedAt = null,
  }) {
    return _then(_self.copyWith(
      fullText: null == fullText
          ? _self.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as AiDoneEvent,
      receivedAt: null == receivedAt
          ? _self.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [AiMessage].
extension AiMessagePatterns on AiMessage {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AiMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiMessage() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AiMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiMessage():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AiMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiMessage() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String fullText, AiDoneEvent metadata, DateTime receivedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiMessage() when $default != null:
        return $default(_that.fullText, _that.metadata, _that.receivedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullText, AiDoneEvent metadata, DateTime receivedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiMessage():
        return $default(_that.fullText, _that.metadata, _that.receivedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String fullText, AiDoneEvent metadata, DateTime receivedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiMessage() when $default != null:
        return $default(_that.fullText, _that.metadata, _that.receivedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AiMessage implements AiMessage {
  const _AiMessage(
      {required this.fullText,
      required this.metadata,
      required this.receivedAt});
  factory _AiMessage.fromJson(Map<String, dynamic> json) =>
      _$AiMessageFromJson(json);

  @override
  final String fullText;
  @override
  final AiDoneEvent metadata;
  @override
  final DateTime receivedAt;

  /// Create a copy of AiMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AiMessageCopyWith<_AiMessage> get copyWith =>
      __$AiMessageCopyWithImpl<_AiMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AiMessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AiMessage &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullText,
      const DeepCollectionEquality().hash(metadata), receivedAt);

  @override
  String toString() {
    return 'AiMessage(fullText: $fullText, metadata: $metadata, receivedAt: $receivedAt)';
  }
}

/// @nodoc
abstract mixin class _$AiMessageCopyWith<$Res>
    implements $AiMessageCopyWith<$Res> {
  factory _$AiMessageCopyWith(
          _AiMessage value, $Res Function(_AiMessage) _then) =
      __$AiMessageCopyWithImpl;
  @override
  @useResult
  $Res call({String fullText, AiDoneEvent metadata, DateTime receivedAt});
}

/// @nodoc
class __$AiMessageCopyWithImpl<$Res> implements _$AiMessageCopyWith<$Res> {
  __$AiMessageCopyWithImpl(this._self, this._then);

  final _AiMessage _self;
  final $Res Function(_AiMessage) _then;

  /// Create a copy of AiMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullText = null,
    Object? metadata = freezed,
    Object? receivedAt = null,
  }) {
    return _then(_AiMessage(
      fullText: null == fullText
          ? _self.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as AiDoneEvent,
      receivedAt: null == receivedAt
          ? _self.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
