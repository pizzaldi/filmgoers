import 'package:json_annotation/json_annotation.dart';

part 'created_by_model.g.dart';

@JsonSerializable()
class CreatedByModel {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'credit_id')
  String creditId;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'gender')
  int gender;

  @JsonKey(name: 'profile_path')
  String profilePath;

  CreatedByModel(
      this.id, this.creditId, this.name, this.gender, this.profilePath);

  factory CreatedByModel.fromJson(Map<String, dynamic> json) =>
      _$CreatedByModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedByModelToJson(this);

  @override
  String toString() {
    return 'CreatedByModel{id: $id, creditId: $creditId, name: $name, gender: $gender, profilePath: $profilePath}';
  }
}
