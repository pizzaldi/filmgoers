// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_episode_to_air_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastEpisodeToAirModel _$LastEpisodeToAirModelFromJson(
    Map<String, dynamic> json) {
  return LastEpisodeToAirModel(
    json['air_date'] as String,
    json['episode_number'] as int,
    json['id'] as int,
    json['name'] as String,
    json['overview'] as String,
    json['production_code'] as String,
    json['season_number'] as String,
    json['still_path'] as String,
    (json['vote_average'] as num)?.toDouble(),
    json['vote_count'] as String,
  );
}

Map<String, dynamic> _$LastEpisodeToAirModelToJson(
        LastEpisodeToAirModel instance) =>
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
