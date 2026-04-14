// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Doctor {
  String get id;
  String get name;
  String get specialty;
  @JsonKey(name: 'license_number')
  String get licenseNumber;
  @JsonKey(name: 'verification_status')
  VerificationStatus get verificationStatus;
  @JsonKey(name: 'years_experience')
  int get yearsExperience;
  double get rating;
  @JsonKey(name: 'review_count')
  int get reviewCount;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @JsonKey(name: 'available_days')
  List<String> get availableDays;
  @JsonKey(name: 'next_available_slot')
  DateTime? get nextAvailableSlot;
  String? get bio;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<Doctor> get copyWith =>
      _$DoctorCopyWithImpl<Doctor>(this as Doctor, _$identity);

  /// Serializes this Doctor to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Doctor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.yearsExperience, yearsExperience) ||
                other.yearsExperience == yearsExperience) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other.availableDays, availableDays) &&
            (identical(other.nextAvailableSlot, nextAvailableSlot) ||
                other.nextAvailableSlot == nextAvailableSlot) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      specialty,
      licenseNumber,
      verificationStatus,
      yearsExperience,
      rating,
      reviewCount,
      avatarUrl,
      const DeepCollectionEquality().hash(availableDays),
      nextAvailableSlot,
      bio);

  @override
  String toString() {
    return 'Doctor(id: $id, name: $name, specialty: $specialty, licenseNumber: $licenseNumber, verificationStatus: $verificationStatus, yearsExperience: $yearsExperience, rating: $rating, reviewCount: $reviewCount, avatarUrl: $avatarUrl, availableDays: $availableDays, nextAvailableSlot: $nextAvailableSlot, bio: $bio)';
  }
}

/// @nodoc
abstract mixin class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) _then) =
      _$DoctorCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String specialty,
      @JsonKey(name: 'license_number') String licenseNumber,
      @JsonKey(name: 'verification_status')
      VerificationStatus verificationStatus,
      @JsonKey(name: 'years_experience') int yearsExperience,
      double rating,
      @JsonKey(name: 'review_count') int reviewCount,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'available_days') List<String> availableDays,
      @JsonKey(name: 'next_available_slot') DateTime? nextAvailableSlot,
      String? bio});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res> implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._self, this._then);

  final Doctor _self;
  final $Res Function(Doctor) _then;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? specialty = null,
    Object? licenseNumber = null,
    Object? verificationStatus = null,
    Object? yearsExperience = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? avatarUrl = freezed,
    Object? availableDays = null,
    Object? nextAvailableSlot = freezed,
    Object? bio = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      specialty: null == specialty
          ? _self.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      licenseNumber: null == licenseNumber
          ? _self.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationStatus: null == verificationStatus
          ? _self.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus,
      yearsExperience: null == yearsExperience
          ? _self.yearsExperience
          : yearsExperience // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      availableDays: null == availableDays
          ? _self.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextAvailableSlot: freezed == nextAvailableSlot
          ? _self.nextAvailableSlot
          : nextAvailableSlot // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Doctor].
extension DoctorPatterns on Doctor {
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
    TResult Function(_Doctor value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Doctor() when $default != null:
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
    TResult Function(_Doctor value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Doctor():
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
    TResult? Function(_Doctor value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Doctor() when $default != null:
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
            String name,
            String specialty,
            @JsonKey(name: 'license_number') String licenseNumber,
            @JsonKey(name: 'verification_status')
            VerificationStatus verificationStatus,
            @JsonKey(name: 'years_experience') int yearsExperience,
            double rating,
            @JsonKey(name: 'review_count') int reviewCount,
            @JsonKey(name: 'avatar_url') String? avatarUrl,
            @JsonKey(name: 'available_days') List<String> availableDays,
            @JsonKey(name: 'next_available_slot') DateTime? nextAvailableSlot,
            String? bio)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Doctor() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.specialty,
            _that.licenseNumber,
            _that.verificationStatus,
            _that.yearsExperience,
            _that.rating,
            _that.reviewCount,
            _that.avatarUrl,
            _that.availableDays,
            _that.nextAvailableSlot,
            _that.bio);
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
            String name,
            String specialty,
            @JsonKey(name: 'license_number') String licenseNumber,
            @JsonKey(name: 'verification_status')
            VerificationStatus verificationStatus,
            @JsonKey(name: 'years_experience') int yearsExperience,
            double rating,
            @JsonKey(name: 'review_count') int reviewCount,
            @JsonKey(name: 'avatar_url') String? avatarUrl,
            @JsonKey(name: 'available_days') List<String> availableDays,
            @JsonKey(name: 'next_available_slot') DateTime? nextAvailableSlot,
            String? bio)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Doctor():
        return $default(
            _that.id,
            _that.name,
            _that.specialty,
            _that.licenseNumber,
            _that.verificationStatus,
            _that.yearsExperience,
            _that.rating,
            _that.reviewCount,
            _that.avatarUrl,
            _that.availableDays,
            _that.nextAvailableSlot,
            _that.bio);
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
            String name,
            String specialty,
            @JsonKey(name: 'license_number') String licenseNumber,
            @JsonKey(name: 'verification_status')
            VerificationStatus verificationStatus,
            @JsonKey(name: 'years_experience') int yearsExperience,
            double rating,
            @JsonKey(name: 'review_count') int reviewCount,
            @JsonKey(name: 'avatar_url') String? avatarUrl,
            @JsonKey(name: 'available_days') List<String> availableDays,
            @JsonKey(name: 'next_available_slot') DateTime? nextAvailableSlot,
            String? bio)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Doctor() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.specialty,
            _that.licenseNumber,
            _that.verificationStatus,
            _that.yearsExperience,
            _that.rating,
            _that.reviewCount,
            _that.avatarUrl,
            _that.availableDays,
            _that.nextAvailableSlot,
            _that.bio);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Doctor extends Doctor {
  const _Doctor(
      {required this.id,
      required this.name,
      required this.specialty,
      @JsonKey(name: 'license_number') required this.licenseNumber,
      @JsonKey(name: 'verification_status') required this.verificationStatus,
      @JsonKey(name: 'years_experience') this.yearsExperience = 0,
      this.rating = 0.0,
      @JsonKey(name: 'review_count') this.reviewCount = 0,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'available_days')
      final List<String> availableDays = const [],
      @JsonKey(name: 'next_available_slot') this.nextAvailableSlot,
      this.bio})
      : _availableDays = availableDays,
        super._();
  factory _Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String specialty;
  @override
  @JsonKey(name: 'license_number')
  final String licenseNumber;
  @override
  @JsonKey(name: 'verification_status')
  final VerificationStatus verificationStatus;
  @override
  @JsonKey(name: 'years_experience')
  final int yearsExperience;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey(name: 'review_count')
  final int reviewCount;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  final List<String> _availableDays;
  @override
  @JsonKey(name: 'available_days')
  List<String> get availableDays {
    if (_availableDays is EqualUnmodifiableListView) return _availableDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDays);
  }

  @override
  @JsonKey(name: 'next_available_slot')
  final DateTime? nextAvailableSlot;
  @override
  final String? bio;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DoctorCopyWith<_Doctor> get copyWith =>
      __$DoctorCopyWithImpl<_Doctor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DoctorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Doctor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.yearsExperience, yearsExperience) ||
                other.yearsExperience == yearsExperience) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._availableDays, _availableDays) &&
            (identical(other.nextAvailableSlot, nextAvailableSlot) ||
                other.nextAvailableSlot == nextAvailableSlot) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      specialty,
      licenseNumber,
      verificationStatus,
      yearsExperience,
      rating,
      reviewCount,
      avatarUrl,
      const DeepCollectionEquality().hash(_availableDays),
      nextAvailableSlot,
      bio);

  @override
  String toString() {
    return 'Doctor(id: $id, name: $name, specialty: $specialty, licenseNumber: $licenseNumber, verificationStatus: $verificationStatus, yearsExperience: $yearsExperience, rating: $rating, reviewCount: $reviewCount, avatarUrl: $avatarUrl, availableDays: $availableDays, nextAvailableSlot: $nextAvailableSlot, bio: $bio)';
  }
}

/// @nodoc
abstract mixin class _$DoctorCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$DoctorCopyWith(_Doctor value, $Res Function(_Doctor) _then) =
      __$DoctorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String specialty,
      @JsonKey(name: 'license_number') String licenseNumber,
      @JsonKey(name: 'verification_status')
      VerificationStatus verificationStatus,
      @JsonKey(name: 'years_experience') int yearsExperience,
      double rating,
      @JsonKey(name: 'review_count') int reviewCount,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'available_days') List<String> availableDays,
      @JsonKey(name: 'next_available_slot') DateTime? nextAvailableSlot,
      String? bio});
}

/// @nodoc
class __$DoctorCopyWithImpl<$Res> implements _$DoctorCopyWith<$Res> {
  __$DoctorCopyWithImpl(this._self, this._then);

  final _Doctor _self;
  final $Res Function(_Doctor) _then;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? specialty = null,
    Object? licenseNumber = null,
    Object? verificationStatus = null,
    Object? yearsExperience = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? avatarUrl = freezed,
    Object? availableDays = null,
    Object? nextAvailableSlot = freezed,
    Object? bio = freezed,
  }) {
    return _then(_Doctor(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      specialty: null == specialty
          ? _self.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      licenseNumber: null == licenseNumber
          ? _self.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationStatus: null == verificationStatus
          ? _self.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus,
      yearsExperience: null == yearsExperience
          ? _self.yearsExperience
          : yearsExperience // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      availableDays: null == availableDays
          ? _self._availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextAvailableSlot: freezed == nextAvailableSlot
          ? _self.nextAvailableSlot
          : nextAvailableSlot // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
