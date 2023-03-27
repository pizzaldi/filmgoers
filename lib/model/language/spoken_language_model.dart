import 'package:json_annotation/json_annotation.dart';

part 'spoken_language_model.g.dart';

@JsonSerializable()
class SpokenLanguageModel {
  @JsonKey(name: 'english_name')
  String? englishName;

  @JsonKey(name: 'iso_639_1')
  String? iso_639_1;

  @JsonKey(name: 'name')
  String? name;

  SpokenLanguageModel(this.englishName, this.iso_639_1, this.name);

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguageModelToJson(this);

  @override
  String toString() {
    return 'SpokenLanguageModel{englishName: $englishName, iso_639_1: $iso_639_1, name: $name}';
  }
}
