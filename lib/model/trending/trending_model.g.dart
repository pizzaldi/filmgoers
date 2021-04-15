// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingModel _$TrendingModelFromJson(Map<String, dynamic> json) {
  return TrendingModel(
    json['page'] as int,
    (json['results'] as List)
        ?.map((e) =>
            e == null ? null : FilmModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['total_pages'] as int,
    json['total_results'] as int,
  );
}

Map<String, dynamic> _$TrendingModelToJson(TrendingModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
