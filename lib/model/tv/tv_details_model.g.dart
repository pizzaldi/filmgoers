// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvDetailsModel _$TvDetailsModelFromJson(Map<String, dynamic> json) {
  return TvDetailsModel(
    json['backdrop_path'] as String,
    (json['created_by'] as List<dynamic>)
        .map((e) => CreatedByModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['episode_run_time'] as List<dynamic>).map((e) => e as int).toList(),
    json['first_air_date'] as String,
    (json['genres'] as List<dynamic>)
        .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['homepage'] as String,
    json['id'] as int,
    json['in_production'] as bool,
    (json['languages'] as List<dynamic>).map((e) => e as String).toList(),
    json['last_air_date'] as String,
    EpisodeModel.fromJson(json['last_episode_to_air'] as Map<String, dynamic>),
    EpisodeModel.fromJson(json['next_episode_to_air'] as Map<String, dynamic>),
    (json['networks'] as List<dynamic>)
        .map((e) => NetworkModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['number_of_episodes'] as int,
    json['number_of_seasons'] as int,
    (json['origin_country'] as List<dynamic>).map((e) => e as String).toList(),
    json['original_language'] as String,
    json['original_name'] as String,
    json['overview'] as String,
    (json['popularity'] as num).toDouble(),
    json['poster_path'] as String,
    (json['production_companies'] as List<dynamic>)
        .map((e) => ProductionCompanyModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['production_countries'] as List<dynamic>)
        .map((e) => ProductionCountryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['seasons'] as List<dynamic>)
        .map((e) => SeasonModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['spoken_languages'] as List<dynamic>)
        .map((e) => SpokenLanguageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['status'] as String,
    json['tagline'] as String,
    json['type'] as String,
    (json['vote_average'] as num).toDouble(),
    json['vote_count'] as int,
  );
}

Map<String, dynamic> _$TvDetailsModelToJson(TvDetailsModel instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'created_by': instance.createdBy,
      'episode_run_time': instance.episodeRuntime,
      'first_air_date': instance.firstAirDate,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'in_production': instance.inProduction,
      'languages': instance.languages,
      'last_air_date': instance.lastAirDate,
      'last_episode_to_air': instance.lastEpisodeToAir,
      'next_episode_to_air': instance.nextEpisodeToAir,
      'networks': instance.networks,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'production_companies': instance.productionCompanies,
      'production_countries': instance.productionCountries,
      'seasons': instance.seasons,
      'spoken_languages': instance.spokenLanguages,
      'status': instance.status,
      'tagline': instance.tagline,
      'type': instance.type,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
