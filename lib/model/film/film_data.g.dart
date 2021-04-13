// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmData _$FilmDataFromJson(Map<String, dynamic> json) {
  return FilmData(
    json['poster_path'] as String,
    json['adult'] as bool,
    json['overview'] as String,
    json['release_date'] as String,
    (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    json['id'] as int,
    json['original_title'] as String,
    json['original_language'] as String,
    json['title'] as String,
    json['backdrop_path'] as String,
    (json['popularity'] as num)?.toDouble(),
    json['vote_count'] as int,
    json['video'] as bool,
    (json['vote_average'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$FilmDataToJson(FilmData instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'video': instance.video,
      'vote_average': instance.voteAverage,
    };
