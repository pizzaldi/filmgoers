import 'package:json_annotation/json_annotation.dart';

part 'network_model.g.dart';

@JsonSerializable()
class NetworkModel {
  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'logo_path')
  String? logoPath;

  @JsonKey(name: 'origin_country')
  String? originCountry;

  NetworkModel(this.name, this.id, this.logoPath, this.originCountry);

  factory NetworkModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkModelFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkModelToJson(this);

  @override
  String toString() {
    return 'NetworkModel{name: $name, id: $id, logoPath: $logoPath, originCountry: $originCountry}';
  }
}
