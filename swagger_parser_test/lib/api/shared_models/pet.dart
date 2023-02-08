import 'package:json_annotation/json_annotation.dart';

import 'category.dart';
import 'tag.dart';

part 'pet.g.dart';

@JsonSerializable()
class Pet {
  const Pet({
    required this.name,
    required this.photoUrls,
    this.id,
    this.category,
    this.tags,
    this.status,
  });
  
  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
  
  final int? id;
  final String name;
  final Category? category;
  final List<String> photoUrls;
  final List<Tag>? tags;
  final String? status;

  Map<String, dynamic> toJson() => _$PetToJson(this);
}
