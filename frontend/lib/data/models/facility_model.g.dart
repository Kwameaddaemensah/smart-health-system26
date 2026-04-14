// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Facility _$FacilityFromJson(Map<String, dynamic> json) => _Facility(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$FacilityTypeEnumMap, json['type']),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      isOpenNow: json['is_open_now'] as bool? ?? false,
      is24Hours: json['is_24_hours'] as bool? ?? false,
      distanceKm: (json['distance_km'] as num?)?.toDouble(),
      openingHours: json['opening_hours'] as String?,
    );

Map<String, dynamic> _$FacilityToJson(_Facility instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$FacilityTypeEnumMap[instance.type]!,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'phone': instance.phone,
      'is_open_now': instance.isOpenNow,
      'is_24_hours': instance.is24Hours,
      'distance_km': instance.distanceKm,
      'opening_hours': instance.openingHours,
    };

const _$FacilityTypeEnumMap = {
  FacilityType.hospital: 'hospital',
  FacilityType.clinic: 'clinic',
  FacilityType.pharmacy: 'pharmacy',
  FacilityType.unknown: 'unknown',
};
