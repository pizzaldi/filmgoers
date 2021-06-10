import 'package:json_annotation/json_annotation.dart';

part 'production_country_model.g.dart';

@JsonSerializable()
class ProductionCountryModel {
  @JsonKey(name: 'iso_3166_1')
  String iso_3166_1;

  @JsonKey(name: 'name')
  String name;

  ProductionCountryModel(this.iso_3166_1, this.name);

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryModelToJson(this);

  @override
  String toString() {
    return 'ProductionCountryModel{iso_3166_1: $iso_3166_1, name: $name}';
  }
}
