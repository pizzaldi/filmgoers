import 'package:json_annotation/json_annotation.dart';

part 'film_model.g.dart';

@JsonSerializable()
class FilmModel {
  @JsonKey(name: 'poster_path')
  String posterPath;

  @JsonKey(name: 'adult')
  bool adult;

  @JsonKey(name: 'overview')
  String overview;

  @JsonKey(name: 'release_date')
  String releaseDate;

  @JsonKey(name: 'genre_ids')
  List<int> genreIds;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'original_title')
  String originalTitle;

  @JsonKey(name: 'original_language')
  String originalLanguage;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'backdrop_path')
  String backdropPath;

  @JsonKey(name: 'popularity')
  double popularity;

  @JsonKey(name: 'vote_count')
  int voteCount;

  @JsonKey(name: 'video')
  bool video;

  @JsonKey(name: 'vote_average')
  double voteAverage;

  FilmModel(
      this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.genreIds,
      this.id,
      this.originalTitle,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage);

  factory FilmModel.fromJson(Map<String, dynamic> json) =>
      _$FilmModelFromJson(json);

  Map<String, dynamic> toJson() => _$FilmModelToJson(this);

  @override
  String toString() {
    return 'FilmData{posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage}';
  }
}
