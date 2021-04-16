// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingModel _$UpcomingModelFromJson(Map<String, dynamic> json) {
  return UpcomingModel(
    json['page'] as int,
    (json['results'] as List)
        ?.map((e) =>
            e == null ? null : FilmModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['dates'] == null
        ? null
        : DatesModel.fromJson(json['dates'] as Map<String, dynamic>),
    json['total_pages'] as int,
    json['total_results'] as int,
  );
}

Map<String, dynamic> _$UpcomingModelToJson(UpcomingModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'dates': instance.dates,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
