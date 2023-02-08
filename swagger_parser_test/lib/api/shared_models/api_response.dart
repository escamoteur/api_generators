import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  ApiResponse({
    required this.code,
    required this.type,
    required this.message,
  });
  
  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
  
  final int code;
  final String type;
  final String message;

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
