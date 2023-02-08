import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  const Tag({
    required this.id,
    required this.name,
  });
  
  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
  
  final int id;
  final String name;

  Map<String, dynamic> toJson() => _$TagToJson(this);
}
