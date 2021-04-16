import 'package:json_annotation/json_annotation.dart';

part 'dates_model.g.dart';

@JsonSerializable()
class DatesModel {
  @JsonKey(name: 'maximum')
  String maximum;

  @JsonKey(name: 'minimum')
  String minimum;

  DatesModel(this.maximum, this.minimum);

  factory DatesModel.fromJson(Map<String, dynamic> json) =>
      _$DatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$DatesModelToJson(this);

  @override
  String toString() {
    return 'DatesModel{maximum: $maximum, minimum: $minimum}';
  }
}
