// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicalRecord {
  String get id;
  @JsonKey(name: 'patient_id')
  String get patientId;
  RecordType get type;
  String get title;
  DateTime get date;
  @JsonKey(name: 'doctor_name')
  String? get doctorName;
  @JsonKey(name: 'file_url')
  String? get fileUrl; // pre-signed S3 URL
  String? get notes;

  /// Create a copy of MedicalRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MedicalRecordCopyWith<MedicalRecord> get copyWith =>
      _$MedicalRecordCopyWithImpl<MedicalRecord>(
          this as MedicalRecord, _$identity);

  /// Serializes this MedicalRecord to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MedicalRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, patientId, type, title, date,
      doctorName, fileUrl, notes);

  @override
  String toString() {
    return 'MedicalRecord(id: $id, patientId: $patientId, type: $type, title: $title, date: $date, doctorName: $doctorName, fileUrl: $fileUrl, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $MedicalRecordCopyWith<$Res> {
  factory $MedicalRecordCopyWith(
          MedicalRecord value, $Res Function(MedicalRecord) _then) =
      _$MedicalRecordCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'patient_id') String patientId,
      RecordType type,
      String title,
      DateTime date,
      @JsonKey(name: 'doctor_name') String? doctorName,
      @JsonKey(name: 'file_url') String? fileUrl,
      String? notes});
}

/// @nodoc
class _$MedicalRecordCopyWithImpl<$Res>
    implements $MedicalRecordCopyWith<$Res> {
  _$MedicalRecordCopyWithImpl(this._self, this._then);

  final MedicalRecord _self;
  final $Res Function(MedicalRecord) _then;

  /// Create a copy of MedicalRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? type = null,
    Object? title = null,
    Object? date = null,
    Object? doctorName = freezed,
    Object? fileUrl = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _self.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecordType,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MedicalRecord].
extension MedicalRecordPatterns on MedicalRecord {
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
    TResult Function(_MedicalRecord value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MedicalRecord() when $default != null:
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
    TResult Function(_MedicalRecord value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MedicalRecord():
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
    TResult? Function(_MedicalRecord value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MedicalRecord() when $default != null:
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
            @JsonKey(name: 'patient_id') String patientId,
            RecordType type,
            String title,
            DateTime date,
            @JsonKey(name: 'doctor_name') String? doctorName,
            @JsonKey(name: 'file_url') String? fileUrl,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MedicalRecord() when $default != null:
        return $default(_that.id, _that.patientId, _that.type, _that.title,
            _that.date, _that.doctorName, _that.fileUrl, _that.notes);
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
            @JsonKey(name: 'patient_id') String patientId,
            RecordType type,
            String title,
            DateTime date,
            @JsonKey(name: 'doctor_name') String? doctorName,
            @JsonKey(name: 'file_url') String? fileUrl,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MedicalRecord():
        return $default(_that.id, _that.patientId, _that.type, _that.title,
            _that.date, _that.doctorName, _that.fileUrl, _that.notes);
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
            @JsonKey(name: 'patient_id') String patientId,
            RecordType type,
            String title,
            DateTime date,
            @JsonKey(name: 'doctor_name') String? doctorName,
            @JsonKey(name: 'file_url') String? fileUrl,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MedicalRecord() when $default != null:
        return $default(_that.id, _that.patientId, _that.type, _that.title,
            _that.date, _that.doctorName, _that.fileUrl, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MedicalRecord extends MedicalRecord {
  const _MedicalRecord(
      {required this.id,
      @JsonKey(name: 'patient_id') required this.patientId,
      required this.type,
      required this.title,
      required this.date,
      @JsonKey(name: 'doctor_name') this.doctorName,
      @JsonKey(name: 'file_url') this.fileUrl,
      this.notes})
      : super._();
  factory _MedicalRecord.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'patient_id')
  final String patientId;
  @override
  final RecordType type;
  @override
  final String title;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'doctor_name')
  final String? doctorName;
  @override
  @JsonKey(name: 'file_url')
  final String? fileUrl;
// pre-signed S3 URL
  @override
  final String? notes;

  /// Create a copy of MedicalRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MedicalRecordCopyWith<_MedicalRecord> get copyWith =>
      __$MedicalRecordCopyWithImpl<_MedicalRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MedicalRecordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, patientId, type, title, date,
      doctorName, fileUrl, notes);

  @override
  String toString() {
    return 'MedicalRecord(id: $id, patientId: $patientId, type: $type, title: $title, date: $date, doctorName: $doctorName, fileUrl: $fileUrl, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$MedicalRecordCopyWith<$Res>
    implements $MedicalRecordCopyWith<$Res> {
  factory _$MedicalRecordCopyWith(
          _MedicalRecord value, $Res Function(_MedicalRecord) _then) =
      __$MedicalRecordCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'patient_id') String patientId,
      RecordType type,
      String title,
      DateTime date,
      @JsonKey(name: 'doctor_name') String? doctorName,
      @JsonKey(name: 'file_url') String? fileUrl,
      String? notes});
}

/// @nodoc
class __$MedicalRecordCopyWithImpl<$Res>
    implements _$MedicalRecordCopyWith<$Res> {
  __$MedicalRecordCopyWithImpl(this._self, this._then);

  final _MedicalRecord _self;
  final $Res Function(_MedicalRecord) _then;

  /// Create a copy of MedicalRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? type = null,
    Object? title = null,
    Object? date = null,
    Object? doctorName = freezed,
    Object? fileUrl = freezed,
    Object? notes = freezed,
  }) {
    return _then(_MedicalRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _self.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecordType,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doctorName: freezed == doctorName
          ? _self.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
