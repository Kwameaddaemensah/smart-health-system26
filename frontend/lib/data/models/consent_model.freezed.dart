// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Consent {
  String get id;
  @JsonKey(name: 'doctor_id')
  String get doctorId;
  @JsonKey(name: 'doctor_name')
  String get doctorName;
  @JsonKey(name: 'patient_id')
  String get patientId;
  ConsentStatus get status;
  @JsonKey(name: 'granted_at')
  DateTime? get grantedAt;
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt;
  @JsonKey(name: 'record_types')
  List<String> get recordTypes;

  /// Create a copy of Consent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConsentCopyWith<Consent> get copyWith =>
      _$ConsentCopyWithImpl<Consent>(this as Consent, _$identity);

  /// Serializes this Consent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Consent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.grantedAt, grantedAt) ||
                other.grantedAt == grantedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality()
                .equals(other.recordTypes, recordTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      doctorId,
      doctorName,
      patientId,
      status,
      grantedAt,
      expiresAt,
      const DeepCollectionEquality().hash(recordTypes));

  @override
  String toString() {
    return 'Consent(id: $id, doctorId: $doctorId, doctorName: $doctorName, patientId: $patientId, status: $status, grantedAt: $grantedAt, expiresAt: $expiresAt, recordTypes: $recordTypes)';
  }
}

/// @nodoc
abstract mixin class $ConsentCopyWith<$Res> {
  factory $ConsentCopyWith(Consent value, $Res Function(Consent) _then) =
      _$ConsentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'doctor_id') String doctorId,
      @JsonKey(name: 'doctor_name') String doctorName,
      @JsonKey(name: 'patient_id') String patientId,
      ConsentStatus status,
      @JsonKey(name: 'granted_at') DateTime? grantedAt,
      @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @JsonKey(name: 'record_types') List<String> recordTypes});
}

/// @nodoc
class _$ConsentCopyWithImpl<$Res> implements $ConsentCopyWith<$Res> {
  _$ConsentCopyWithImpl(this._self, this._then);

  final Consent _self;
  final $Res Function(Consent) _then;

  /// Create a copy of Consent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? doctorName = null,
    Object? patientId = null,
    Object? status = null,
    Object? grantedAt = freezed,
    Object? expiresAt = freezed,
    Object? recordTypes = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: null == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _self.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConsentStatus,
      grantedAt: freezed == grantedAt
          ? _self.grantedAt
          : grantedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordTypes: null == recordTypes
          ? _self.recordTypes
          : recordTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Consent].
extension ConsentPatterns on Consent {
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
    TResult Function(_Consent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Consent() when $default != null:
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
    TResult Function(_Consent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consent():
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
    TResult? Function(_Consent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consent() when $default != null:
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
            String id,
            @JsonKey(name: 'doctor_id') String doctorId,
            @JsonKey(name: 'doctor_name') String doctorName,
            @JsonKey(name: 'patient_id') String patientId,
            ConsentStatus status,
            @JsonKey(name: 'granted_at') DateTime? grantedAt,
            @JsonKey(name: 'expires_at') DateTime? expiresAt,
            @JsonKey(name: 'record_types') List<String> recordTypes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Consent() when $default != null:
        return $default(
            _that.id,
            _that.doctorId,
            _that.doctorName,
            _that.patientId,
            _that.status,
            _that.grantedAt,
            _that.expiresAt,
            _that.recordTypes);
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
    TResult Function(
            String id,
            @JsonKey(name: 'doctor_id') String doctorId,
            @JsonKey(name: 'doctor_name') String doctorName,
            @JsonKey(name: 'patient_id') String patientId,
            ConsentStatus status,
            @JsonKey(name: 'granted_at') DateTime? grantedAt,
            @JsonKey(name: 'expires_at') DateTime? expiresAt,
            @JsonKey(name: 'record_types') List<String> recordTypes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consent():
        return $default(
            _that.id,
            _that.doctorId,
            _that.doctorName,
            _that.patientId,
            _that.status,
            _that.grantedAt,
            _that.expiresAt,
            _that.recordTypes);
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
            String id,
            @JsonKey(name: 'doctor_id') String doctorId,
            @JsonKey(name: 'doctor_name') String doctorName,
            @JsonKey(name: 'patient_id') String patientId,
            ConsentStatus status,
            @JsonKey(name: 'granted_at') DateTime? grantedAt,
            @JsonKey(name: 'expires_at') DateTime? expiresAt,
            @JsonKey(name: 'record_types') List<String> recordTypes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consent() when $default != null:
        return $default(
            _that.id,
            _that.doctorId,
            _that.doctorName,
            _that.patientId,
            _that.status,
            _that.grantedAt,
            _that.expiresAt,
            _that.recordTypes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Consent extends Consent {
  const _Consent(
      {required this.id,
      @JsonKey(name: 'doctor_id') required this.doctorId,
      @JsonKey(name: 'doctor_name') required this.doctorName,
      @JsonKey(name: 'patient_id') required this.patientId,
      required this.status,
      @JsonKey(name: 'granted_at') this.grantedAt,
      @JsonKey(name: 'expires_at') this.expiresAt,
      @JsonKey(name: 'record_types') final List<String> recordTypes = const []})
      : _recordTypes = recordTypes,
        super._();
  factory _Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'doctor_id')
  final String doctorId;
  @override
  @JsonKey(name: 'doctor_name')
  final String doctorName;
  @override
  @JsonKey(name: 'patient_id')
  final String patientId;
  @override
  final ConsentStatus status;
  @override
  @JsonKey(name: 'granted_at')
  final DateTime? grantedAt;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime? expiresAt;
  final List<String> _recordTypes;
  @override
  @JsonKey(name: 'record_types')
  List<String> get recordTypes {
    if (_recordTypes is EqualUnmodifiableListView) return _recordTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordTypes);
  }

  /// Create a copy of Consent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConsentCopyWith<_Consent> get copyWith =>
      __$ConsentCopyWithImpl<_Consent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConsentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Consent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.grantedAt, grantedAt) ||
                other.grantedAt == grantedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality()
                .equals(other._recordTypes, _recordTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      doctorId,
      doctorName,
      patientId,
      status,
      grantedAt,
      expiresAt,
      const DeepCollectionEquality().hash(_recordTypes));

  @override
  String toString() {
    return 'Consent(id: $id, doctorId: $doctorId, doctorName: $doctorName, patientId: $patientId, status: $status, grantedAt: $grantedAt, expiresAt: $expiresAt, recordTypes: $recordTypes)';
  }
}

/// @nodoc
abstract mixin class _$ConsentCopyWith<$Res> implements $ConsentCopyWith<$Res> {
  factory _$ConsentCopyWith(_Consent value, $Res Function(_Consent) _then) =
      __$ConsentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'doctor_id') String doctorId,
      @JsonKey(name: 'doctor_name') String doctorName,
      @JsonKey(name: 'patient_id') String patientId,
      ConsentStatus status,
      @JsonKey(name: 'granted_at') DateTime? grantedAt,
      @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @JsonKey(name: 'record_types') List<String> recordTypes});
}

/// @nodoc
class __$ConsentCopyWithImpl<$Res> implements _$ConsentCopyWith<$Res> {
  __$ConsentCopyWithImpl(this._self, this._then);

  final _Consent _self;
  final $Res Function(_Consent) _then;

  /// Create a copy of Consent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? doctorName = null,
    Object? patientId = null,
    Object? status = null,
    Object? grantedAt = freezed,
    Object? expiresAt = freezed,
    Object? recordTypes = null,
  }) {
    return _then(_Consent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _self.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: null == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _self.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConsentStatus,
      grantedAt: freezed == grantedAt
          ? _self.grantedAt
          : grantedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordTypes: null == recordTypes
          ? _self._recordTypes
          : recordTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
