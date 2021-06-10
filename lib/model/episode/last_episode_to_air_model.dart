import 'package:json_annotation/json_annotation.dart';

part 'last_episode_to_air_model.g.dart';

@JsonSerializable()
class LastEpisodeToAirModel {
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
  String seasonNumber;

  @JsonKey(name: 'still_path')
  String stillPath;

  @JsonKey(name: 'vote_average')
  double voteAverage;

  @JsonKey(name: 'vote_count')
  String voteCount;

  LastEpisodeToAirModel(
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

  factory LastEpisodeToAirModel.fromJson(Map<String, dynamic> json) =>
      _$LastEpisodeToAirModelFromJson(json);

  Map<String, dynamic> toJson() => _$LastEpisodeToAirModelToJson(this);

  @override
  String toString() {
    return 'LastEpisodeToAirModel{airDate: $airDate, episodeNumber: $episodeNumber, id: $id, name: $name, overview: $overview, productionCode: $productionCode, seasonNumber: $seasonNumber, stillPath: $stillPath, voteAverage: $voteAverage, voteCount: $voteCount}';
  }
}
