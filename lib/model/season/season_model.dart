import 'package:json_annotation/json_annotation.dart';

part 'season_model.g.dart';

@JsonSerializable()
class SeasonModel {
  @JsonKey(name: 'air_date')
  String airDate;

  @JsonKey(name: 'episode_count')
  int episodeCount;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'overview')
  String overview;

  @JsonKey(name: 'poster_path')
  String posterPath;

  @JsonKey(name: 'season_number')
  int seasonNumber;

  SeasonModel(this.airDate, this.episodeCount, this.id, this.name,
      this.overview, this.posterPath, this.seasonNumber);

  factory SeasonModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonModelToJson(this);

  @override
  String toString() {
    return 'SeasonModel{airDate: $airDate, episodeCount: $episodeCount, id: $id, name: $name, overview: $overview, posterPath: $posterPath, seasonNumber: $seasonNumber}';
  }
}
