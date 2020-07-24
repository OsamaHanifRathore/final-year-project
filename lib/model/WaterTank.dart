
import 'package:json_annotation/json_annotation.dart';

part 'WaterTank.g.dart';
@JsonSerializable()
class WaterTank{
  int data;

  WaterTank(this.data);

  factory WaterTank.fromJson(Map<String, dynamic> json) => _$WaterTankFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$WaterTankToJson(this);
}