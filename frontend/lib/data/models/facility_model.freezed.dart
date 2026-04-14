// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facility_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Facility {
  String get id;
  String get name;
  FacilityType get type;
  double get latitude;
  double get longitude;
  String? get address;
  String? get phone;
  @JsonKey(name: 'is_open_now')
  bool get isOpenNow;
  @JsonKey(name: 'is_24_hours')
  bool get is24Hours;
  @JsonKey(name: 'distance_km')
  double? get distanceKm;
  @JsonKey(name: 'opening_hours')
  String? get openingHours;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FacilityCopyWith<Facility> get copyWith =>
      _$FacilityCopyWithImpl<Facility>(this as Facility, _$identity);

  /// Serializes this Facility to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Facility &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isOpenNow, isOpenNow) ||
                other.isOpenNow == isOpenNow) &&
            (identical(other.is24Hours, is24Hours) ||
                other.is24Hours == is24Hours) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      latitude,
      longitude,
      address,
      phone,
      isOpenNow,
      is24Hours,
      distanceKm,
      openingHours);

  @override
  String toString() {
    return 'Facility(id: $id, name: $name, type: $type, latitude: $latitude, longitude: $longitude, address: $address, phone: $phone, isOpenNow: $isOpenNow, is24Hours: $is24Hours, distanceKm: $distanceKm, openingHours: $openingHours)';
  }
}

/// @nodoc
abstract mixin class $FacilityCopyWith<$Res> {
  factory $FacilityCopyWith(Facility value, $Res Function(Facility) _then) =
      _$FacilityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      FacilityType type,
      double latitude,
      double longitude,
      String? address,
      String? phone,
      @JsonKey(name: 'is_open_now') bool isOpenNow,
      @JsonKey(name: 'is_24_hours') bool is24Hours,
      @JsonKey(name: 'distance_km') double? distanceKm,
      @JsonKey(name: 'opening_hours') String? openingHours});
}

/// @nodoc
class _$FacilityCopyWithImpl<$Res> implements $FacilityCopyWith<$Res> {
  _$FacilityCopyWithImpl(this._self, this._then);

  final Facility _self;
  final $Res Function(Facility) _then;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? isOpenNow = null,
    Object? is24Hours = null,
    Object? distanceKm = freezed,
    Object? openingHours = freezed,
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
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as FacilityType,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpenNow: null == isOpenNow
          ? _self.isOpenNow
          : isOpenNow // ignore: cast_nullable_to_non_nullable
              as bool,
      is24Hours: null == is24Hours
          ? _self.is24Hours
          : is24Hours // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceKm: freezed == distanceKm
          ? _self.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double?,
      openingHours: freezed == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Facility].
extension FacilityPatterns on Facility {
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
    TResult Function(_Facility value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Facility() when $default != null:
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
    TResult Function(_Facility value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Facility():
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
    TResult? Function(_Facility value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Facility() when $default != null:
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
            FacilityType type,
            double latitude,
            double longitude,
            String? address,
            String? phone,
            @JsonKey(name: 'is_open_now') bool isOpenNow,
            @JsonKey(name: 'is_24_hours') bool is24Hours,
            @JsonKey(name: 'distance_km') double? distanceKm,
            @JsonKey(name: 'opening_hours') String? openingHours)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Facility() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.type,
            _that.latitude,
            _that.longitude,
            _that.address,
            _that.phone,
            _that.isOpenNow,
            _that.is24Hours,
            _that.distanceKm,
            _that.openingHours);
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
            FacilityType type,
            double latitude,
            double longitude,
            String? address,
            String? phone,
            @JsonKey(name: 'is_open_now') bool isOpenNow,
            @JsonKey(name: 'is_24_hours') bool is24Hours,
            @JsonKey(name: 'distance_km') double? distanceKm,
            @JsonKey(name: 'opening_hours') String? openingHours)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Facility():
        return $default(
            _that.id,
            _that.name,
            _that.type,
            _that.latitude,
            _that.longitude,
            _that.address,
            _that.phone,
            _that.isOpenNow,
            _that.is24Hours,
            _that.distanceKm,
            _that.openingHours);
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
            FacilityType type,
            double latitude,
            double longitude,
            String? address,
            String? phone,
            @JsonKey(name: 'is_open_now') bool isOpenNow,
            @JsonKey(name: 'is_24_hours') bool is24Hours,
            @JsonKey(name: 'distance_km') double? distanceKm,
            @JsonKey(name: 'opening_hours') String? openingHours)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Facility() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.type,
            _that.latitude,
            _that.longitude,
            _that.address,
            _that.phone,
            _that.isOpenNow,
            _that.is24Hours,
            _that.distanceKm,
            _that.openingHours);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Facility extends Facility {
  const _Facility(
      {required this.id,
      required this.name,
      required this.type,
      required this.latitude,
      required this.longitude,
      this.address,
      this.phone,
      @JsonKey(name: 'is_open_now') this.isOpenNow = false,
      @JsonKey(name: 'is_24_hours') this.is24Hours = false,
      @JsonKey(name: 'distance_km') this.distanceKm,
      @JsonKey(name: 'opening_hours') this.openingHours})
      : super._();
  factory _Facility.fromJson(Map<String, dynamic> json) =>
      _$FacilityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final FacilityType type;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'is_open_now')
  final bool isOpenNow;
  @override
  @JsonKey(name: 'is_24_hours')
  final bool is24Hours;
  @override
  @JsonKey(name: 'distance_km')
  final double? distanceKm;
  @override
  @JsonKey(name: 'opening_hours')
  final String? openingHours;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FacilityCopyWith<_Facility> get copyWith =>
      __$FacilityCopyWithImpl<_Facility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FacilityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Facility &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isOpenNow, isOpenNow) ||
                other.isOpenNow == isOpenNow) &&
            (identical(other.is24Hours, is24Hours) ||
                other.is24Hours == is24Hours) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      latitude,
      longitude,
      address,
      phone,
      isOpenNow,
      is24Hours,
      distanceKm,
      openingHours);

  @override
  String toString() {
    return 'Facility(id: $id, name: $name, type: $type, latitude: $latitude, longitude: $longitude, address: $address, phone: $phone, isOpenNow: $isOpenNow, is24Hours: $is24Hours, distanceKm: $distanceKm, openingHours: $openingHours)';
  }
}

/// @nodoc
abstract mixin class _$FacilityCopyWith<$Res>
    implements $FacilityCopyWith<$Res> {
  factory _$FacilityCopyWith(_Facility value, $Res Function(_Facility) _then) =
      __$FacilityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      FacilityType type,
      double latitude,
      double longitude,
      String? address,
      String? phone,
      @JsonKey(name: 'is_open_now') bool isOpenNow,
      @JsonKey(name: 'is_24_hours') bool is24Hours,
      @JsonKey(name: 'distance_km') double? distanceKm,
      @JsonKey(name: 'opening_hours') String? openingHours});
}

/// @nodoc
class __$FacilityCopyWithImpl<$Res> implements _$FacilityCopyWith<$Res> {
  __$FacilityCopyWithImpl(this._self, this._then);

  final _Facility _self;
  final $Res Function(_Facility) _then;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? isOpenNow = null,
    Object? is24Hours = null,
    Object? distanceKm = freezed,
    Object? openingHours = freezed,
  }) {
    return _then(_Facility(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as FacilityType,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpenNow: null == isOpenNow
          ? _self.isOpenNow
          : isOpenNow // ignore: cast_nullable_to_non_nullable
              as bool,
      is24Hours: null == is24Hours
          ? _self.is24Hours
          : is24Hours // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceKm: freezed == distanceKm
          ? _self.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double?,
      openingHours: freezed == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
