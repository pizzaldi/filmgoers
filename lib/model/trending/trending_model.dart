import 'package:filmgoers/model/film/film_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trending_model.g.dart';

@JsonSerializable()
class TrendingModel {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<FilmModel>? results;

  @JsonKey(name: 'total_pages')
  int? totalPages;

  @JsonKey(name: 'total_results')
  int? totalResults;

  TrendingModel(this.page, this.results, this.totalPages, this.totalResults);

  factory TrendingModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingModelToJson(this);

  @override
  String toString() {
    return 'TrendingData{page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults}';
  }
}
