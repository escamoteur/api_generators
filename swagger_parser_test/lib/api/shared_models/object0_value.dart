import 'package:json_annotation/json_annotation.dart';

part 'object0_value.g.dart';

@JsonSerializable()
class Object0Value {
  const Object0Value({
    required this.additionalProperties,
  });
  
  factory Object0Value.fromJson(Map<String, dynamic> json) => _$Object0ValueFromJson(json);
  
  final int additionalProperties;

  Map<String, dynamic> toJson() => _$Object0ValueToJson(this);
}
