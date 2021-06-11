// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) {
  return EpisodeModel(
    json['air_date'] as String,
    json['episode_number'] as int,
    json['id'] as int,
    json['name'] as String,
    json['overview'] as String,
    json['production_code'] as String,
    json['season_number'] as int,
    json['still_path'] as String,
    (json['vote_average'] as num)?.toDouble(),
    json['vote_count'] as int,
  );
}

Map<String, dynamic> _$EpisodeModelToJson(EpisodeModel instance) =>
    <String, dynamic>{
      'air_date': instance.airDate,
      'episode_number': instance.episodeNumber,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'production_code': instance.productionCode,
      'season_number': instance.seasonNumber,
      'still_path': instance.stillPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
