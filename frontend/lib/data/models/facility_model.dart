import 'package:freezed_annotation/freezed_annotation.dart';

part 'facility_model.freezed.dart';
part 'facility_model.g.dart';

enum FacilityType {
  @JsonValue('hospital')  hospital,
  @JsonValue('clinic')    clinic,
  @JsonValue('pharmacy')  pharmacy,
  @JsonValue('unknown')   unknown;

  String get displayName => switch (this) {
    FacilityType.hospital => 'Hospital',
    FacilityType.clinic   => 'Clinic',
    FacilityType.pharmacy => 'Pharmacy',
    FacilityType.unknown  => 'Facility',
  };
}

@freezed
class Facility with _$Facility {
  const Facility._();

  const factory Facility({
    required String       id,
    required String       name,
    required FacilityType type,
    required double       latitude,
    required double       longitude,
    String? address,
    String? phone,
    @JsonKey(name: 'is_open_now')  @Default(false) bool isOpenNow,
    @JsonKey(name: 'is_24_hours')  @Default(false) bool is24Hours,
    @JsonKey(name: 'distance_km')  double? distanceKm,
    @JsonKey(name: 'opening_hours') String? openingHours,
  }) = _Facility;

  factory Facility.fromJson(Map<String, dynamic> json) =>
      _$FacilityFromJson(json);

  String get distanceDisplay {
    if (distanceKm == null) return '';
    if (distanceKm! < 1.0) {
      return '${(distanceKm! * 1000).round()}m away';
    }
    return '${distanceKm!.toStringAsFixed(1)}km away';
  }
}