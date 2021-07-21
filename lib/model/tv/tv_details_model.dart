import 'package:filmgoers/model/created_by/created_by_model.dart';
import 'package:filmgoers/model/episode/episode_model.dart';
import 'package:filmgoers/model/genre/genre_model.dart';
import 'package:filmgoers/model/network/network_model.dart';
import 'package:filmgoers/model/production/production_company_model.dart';
import 'package:filmgoers/model/production/production_country_model.dart';
import 'package:filmgoers/model/season/season_model.dart';
import 'package:filmgoers/model/language/spoken_language_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_details_model.g.dart';

@JsonSerializable()
class TvDetailsModel {
  @JsonKey(name: 'backdrop_path')
  String backdropPath;

  @JsonKey(name: 'created_by')
  List<CreatedByModel> createdBy;

  @JsonKey(name: 'episode_run_time')
  List<int> episodeRuntime;

  @JsonKey(name: 'first_air_date')
  String firstAirDate;

  @JsonKey(name: 'genres')
  List<GenreModel> genres;

  @JsonKey(name: 'homepage')
  String homepage;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'in_production')
  bool inProduction;

  @JsonKey(name: 'languages')
  List<String> languages;

  @JsonKey(name: 'last_air_date')
  String lastAirDate;

  @JsonKey(name: 'last_episode_to_air')
  EpisodeModel lastEpisodeToAir;

  @JsonKey(name: 'next_episode_to_air')
  EpisodeModel nextEpisodeToAir;

  @JsonKey(name: 'networks')
  List<NetworkModel> networks;

  @JsonKey(name: 'number_of_episodes')
  int numberOfEpisodes;

  @JsonKey(name: 'number_of_seasons')
  int numberOfSeasons;

  @JsonKey(name: 'origin_country')
  List<String> originCountry;

  @JsonKey(name: 'original_language')
  String originalLanguage;

  @JsonKey(name: 'original_name')
  String originalName;

  @JsonKey(name: 'overview')
  String overview;

  @JsonKey(name: 'popularity')
  double popularity;

  @JsonKey(name: 'poster_path')
  String posterPath;

  @JsonKey(name: 'production_companies')
  List<ProductionCompanyModel> productionCompanies;

  @JsonKey(name: 'production_countries')
  List<ProductionCountryModel> productionCountries;

  @JsonKey(name: 'seasons')
  List<SeasonModel> seasons;

  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguageModel> spokenLanguages;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'tagline')
  String tagline;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'vote_average')
  double voteAverage;

  @JsonKey(name: 'vote_count')
  int voteCount;

  TvDetailsModel(
      this.backdropPath,
      this.createdBy,
      this.episodeRuntime,
      this.firstAirDate,
      this.genres,
      this.homepage,
      this.id,
      this.inProduction,
      this.languages,
      this.lastAirDate,
      this.lastEpisodeToAir,
      this.nextEpisodeToAir,
      this.networks,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountry,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.seasons,
      this.spokenLanguages,
      this.status,
      this.tagline,
      this.type,
      this.voteAverage,
      this.voteCount);

  factory TvDetailsModel.fromJson(Map<String, dynamic>? json) =>
      _$TvDetailsModelFromJson(json!);

  Map<String, dynamic> toJson() => _$TvDetailsModelToJson(this);

  @override
  String toString() {
    return 'TvDetailsModel{backdropPath: $backdropPath, createdBy: $createdBy, episodeRuntime: $episodeRuntime, firstAirDate: $firstAirDate, genres: $genres, homepage: $homepage, id: $id, inProduction: $inProduction, languages: $languages, lastAirDate: $lastAirDate, lastEpisodeToAir: $lastEpisodeToAir, networks: $networks, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, originCountry: $originCountry, originalLanguage: $originalLanguage, originalName: $originalName, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, seasons: $seasons, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, type: $type, voteAverage: $voteAverage, voteCount: $voteCount}';
  }
}
