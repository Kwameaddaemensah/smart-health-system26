// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _$Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  String get id;
  @JsonKey(name: 'doctor_id')
  String get doctorId;
  @JsonKey(name: 'doctor_name')
  String get doctorName;
  String get specialty;
  @JsonKey(name: 'scheduled_at')
  DateTime get scheduledAt;
  AppointmentStatus get status;
  @JsonKey(name: 'patient_notes')
  String? get patientNotes;
  @JsonKey(name: 'doctor_notes')
  String? get doctorNotes;
  @JsonKey(name: 'location_name')
  String? get locationName;
  @JsonKey(name: 'duration_minutes')
  int get durationMinutes;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<Appointment> get copyWith =>
      _$AppointmentCopyWithImpl<Appointment>(this as Appointment, _$identity);

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Appointment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.patientNotes, patientNotes) ||
                other.patientNotes == patientNotes) &&
            (identical(other.doctorNotes, doctorNotes) ||
                other.doctorNotes == doctorNotes) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      doctorId,
      doctorName,
      specialty,
      scheduledAt,
      status,
      patientNotes,
      doctorNotes,
      locationName,
      durationMinutes);

  @override
  String toString() {
    return 'Appointment(id: $id, doctorId: $doctorId, doctorName: $doctorName, specialty: $specialty, scheduledAt: $scheduledAt, status: $status, patientNotes: $patientNotes, doctorNotes: $doctorNotes, locationName: $locationName, durationMinutes: $durationMinutes)';
  }
}

/// @nodoc
abstract mixin class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) _then) =
      _$AppointmentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'doctor_id') String doctorId,
      @JsonKey(name: 'doctor_name') String doctorName,
      String specialty,
      @JsonKey(name: 'scheduled_at') DateTime scheduledAt,
      AppointmentStatus status,
      @JsonKey(name: 'patient_notes') String? patientNotes,
      @JsonKey(name: 'doctor_notes') String? doctorNotes,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'duration_minutes') int durationMinutes});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res> implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._self, this._then);

  final Appointment _self;
  final $Res Function(Appointment) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? doctorName = null,
    Object? specialty = null,
    Object? scheduledAt = null,
    Object? status = null,
    Object? patientNotes = freezed,
    Object? doctorNotes = freezed,
    Object? locationName = freezed,
    Object? durationMinutes = null,
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
      specialty: null == specialty
          ? _self.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
      patientNotes: freezed == patientNotes
          ? _self.patientNotes
          : patientNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorNotes: freezed == doctorNotes
          ? _self.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: null == durationMinutes
          ? _self.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Appointment].
extension AppointmentPatterns on Appointment {
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
    TResult Function(_$Appointment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _$Appointment() when $default != null:
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
    TResult Function(_$Appointment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _$Appointment():
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
    TResult? Function(_$Appointment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _$Appointment() when $default != null:
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
            String specialty,
            @JsonKey(name: 'scheduled_at') DateTime scheduledAt,
            AppointmentStatus status,
            @JsonKey(name: 'patient_notes') String? patientNotes,
            @JsonKey(name: 'doctor_notes') String? doctorNotes,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'duration_minutes') int durationMinutes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _$Appointment() when $default != null:
        return $default(
            _that.id,
            _that.doctorId,
            _that.doctorName,
            _that.specialty,
            _that.scheduledAt,
            _that.status,
            _that.patientNotes,
            _that.doctorNotes,
            _that.locationName,
            _that.durationMinutes);
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
            String specialty,
            @JsonKey(name: 'scheduled_at') DateTime scheduledAt,
            AppointmentStatus status,
            @JsonKey(name: 'patient_notes') String? patientNotes,
            @JsonKey(name: 'doctor_notes') String? doctorNotes,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'duration_minutes') int durationMinutes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _$Appointment():
        return $default(
            _that.id,
            _that.doctorId,
            _that.doctorName,
            _that.specialty,
            _that.scheduledAt,
            _that.status,
            _that.patientNotes,
            _that.doctorNotes,
            _that.locationName,
            _that.durationMinutes);
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
            String specialty,
            @JsonKey(name: 'scheduled_at') DateTime scheduledAt,
            AppointmentStatus status,
            @JsonKey(name: 'patient_notes') String? patientNotes,
            @JsonKey(name: 'doctor_notes') String? doctorNotes,
            @JsonKey(name: 'location_name') String? locationName,
            @JsonKey(name: 'duration_minutes') int durationMinutes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _$Appointment() when $default != null:
        return $default(
            _that.id,
            _that.doctorId,
            _that.doctorName,
            _that.specialty,
            _that.scheduledAt,
            _that.status,
            _that.patientNotes,
            _that.doctorNotes,
            _that.locationName,
            _that.durationMinutes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _$Appointment extends Appointment {
  const _$Appointment(
      {required this.id,
      @JsonKey(name: 'doctor_id') required this.doctorId,
      @JsonKey(name: 'doctor_name') required this.doctorName,
      required this.specialty,
      @JsonKey(name: 'scheduled_at') required this.scheduledAt,
      required this.status,
      @JsonKey(name: 'patient_notes') this.patientNotes,
      @JsonKey(name: 'doctor_notes') this.doctorNotes,
      @JsonKey(name: 'location_name') this.locationName,
      @JsonKey(name: 'duration_minutes') this.durationMinutes = 30})
      : super._();
  factory _$Appointment.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'doctor_id')
  final String doctorId;
  @override
  @JsonKey(name: 'doctor_name')
  final String doctorName;
  @override
  final String specialty;
  @override
  @JsonKey(name: 'scheduled_at')
  final DateTime scheduledAt;
  @override
  final AppointmentStatus status;
  @override
  @JsonKey(name: 'patient_notes')
  final String? patientNotes;
  @override
  @JsonKey(name: 'doctor_notes')
  final String? doctorNotes;
  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  @JsonKey(name: 'duration_minutes')
  final int durationMinutes;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$$AppointmentCopyWith<_$Appointment> get copyWith =>
      __$$AppointmentCopyWithImpl<_$Appointment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Appointment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.patientNotes, patientNotes) ||
                other.patientNotes == patientNotes) &&
            (identical(other.doctorNotes, doctorNotes) ||
                other.doctorNotes == doctorNotes) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      doctorId,
      doctorName,
      specialty,
      scheduledAt,
      status,
      patientNotes,
      doctorNotes,
      locationName,
      durationMinutes);

  @override
  String toString() {
    return 'Appointment(id: $id, doctorId: $doctorId, doctorName: $doctorName, specialty: $specialty, scheduledAt: $scheduledAt, status: $status, patientNotes: $patientNotes, doctorNotes: $doctorNotes, locationName: $locationName, durationMinutes: $durationMinutes)';
  }
}

/// @nodoc
abstract mixin class _$$AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentCopyWith(
          _$Appointment value, $Res Function(_$Appointment) _then) =
      __$$AppointmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'doctor_id') String doctorId,
      @JsonKey(name: 'doctor_name') String doctorName,
      String specialty,
      @JsonKey(name: 'scheduled_at') DateTime scheduledAt,
      AppointmentStatus status,
      @JsonKey(name: 'patient_notes') String? patientNotes,
      @JsonKey(name: 'doctor_notes') String? doctorNotes,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'duration_minutes') int durationMinutes});
}

/// @nodoc
class __$$AppointmentCopyWithImpl<$Res>
    implements _$$AppointmentCopyWith<$Res> {
  __$$AppointmentCopyWithImpl(this._self, this._then);

  final _$Appointment _self;
  final $Res Function(_$Appointment) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? doctorName = null,
    Object? specialty = null,
    Object? scheduledAt = null,
    Object? status = null,
    Object? patientNotes = freezed,
    Object? doctorNotes = freezed,
    Object? locationName = freezed,
    Object? durationMinutes = null,
  }) {
    return _then(_$Appointment(
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
      specialty: null == specialty
          ? _self.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentStatus,
      patientNotes: freezed == patientNotes
          ? _self.patientNotes
          : patientNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorNotes: freezed == doctorNotes
          ? _self.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: null == durationMinutes
          ? _self.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
