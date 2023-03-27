import 'package:filmgoers/model/dates/dates_model.dart';
import 'package:filmgoers/model/film/film_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upcoming_model.g.dart';

@JsonSerializable()
class UpcomingModel {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<FilmModel>? results;

  @JsonKey(name: 'dates')
  DatesModel? dates;

  @JsonKey(name: 'total_pages')
  int? totalPages;

  @JsonKey(name: 'total_results')
  int? totalResults;

  UpcomingModel(
      this.page, this.results, this.dates, this.totalPages, this.totalResults);

  factory UpcomingModel.fromJson(Map<String, dynamic> json) =>
      _$UpcomingModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingModelToJson(this);

  @override
  String toString() {
    return 'UpcomingModel{page: $page, results: $results, dates: $dates, totalPages: $totalPages, totalResults: $totalResults}';
  }
}
