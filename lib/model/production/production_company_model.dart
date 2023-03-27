import 'package:json_annotation/json_annotation.dart';

part 'production_company_model.g.dart';

@JsonSerializable()
class ProductionCompanyModel {
  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'logo_path')
  String? logoPath;

  @JsonKey(name: 'origin_country')
  String? originCountry;

  ProductionCompanyModel(this.name, this.id, this.logoPath, this.originCountry);

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyModelToJson(this);

  @override
  String toString() {
    return 'ProductionCompanyModel{name: $name, id: $id, logoPath: $logoPath, originCountry: $originCountry}';
  }
}
