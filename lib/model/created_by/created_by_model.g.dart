// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_by_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatedByModel _$CreatedByModelFromJson(Map<String, dynamic> json) {
  return CreatedByModel(
    json['id'] as int,
    json['credit_id'] as String,
    json['name'] as String,
    json['gender'] as int,
    json['profile_path'] as String,
  );
}

Map<String, dynamic> _$CreatedByModelToJson(CreatedByModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'credit_id': instance.creditId,
      'name': instance.name,
      'gender': instance.gender,
      'profile_path': instance.profilePath,
    };
