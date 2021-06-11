import 'package:json_annotation/json_annotation.dart';

part 'episode_model.g.dart';

@JsonSerializable()
class EpisodeModel {
  @JsonKey(name: 'air_date')
  String airDate;

  @JsonKey(name: 'episode_number')
  int episodeNumber;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'overview')
  String overview;

  @JsonKey(name: 'production_code')
  String productionCode;

  @JsonKey(name: 'season_number')
  int seasonNumber;

  @JsonKey(name: 'still_path')
  String stillPath;

  @JsonKey(name: 'vote_average')
  double voteAverage;

  @JsonKey(name: 'vote_count')
  int voteCount;

  EpisodeModel(
      this.airDate,
      this.episodeNumber,
      this.id,
      this.name,
      this.overview,
      this.productionCode,
      this.seasonNumber,
      this.stillPath,
      this.voteAverage,
      this.voteCount);

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeModelToJson(this);

  @override
  String toString() {
    return 'LastEpisodeToAirModel{airDate: $airDate, episodeNumber: $episodeNumber, id: $id, name: $name, overview: $overview, productionCode: $productionCode, seasonNumber: $seasonNumber, stillPath: $stillPath, voteAverage: $voteAverage, voteCount: $voteCount}';
  }
}
