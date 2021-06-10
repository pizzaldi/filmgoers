// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpokenLanguageModel _$SpokenLanguageModelFromJson(Map<String, dynamic> json) {
  return SpokenLanguageModel(
    json['english_name'] as String,
    json['iso_639_1'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$SpokenLanguageModelToJson(
        SpokenLanguageModel instance) =>
    <String, dynamic>{
      'english_name': instance.englishName,
      'iso_639_1': instance.iso_639_1,
      'name': instance.name,
    };
