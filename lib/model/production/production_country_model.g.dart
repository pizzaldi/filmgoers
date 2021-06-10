// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCountryModel _$ProductionCountryModelFromJson(
    Map<String, dynamic> json) {
  return ProductionCountryModel(
    json['iso_3166_1'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$ProductionCountryModelToJson(
        ProductionCountryModel instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso_3166_1,
      'name': instance.name,
    };
