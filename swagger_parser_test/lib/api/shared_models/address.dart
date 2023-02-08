import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  const Address({
    required this.street,
    required this.city,
    required this.state,
    required this.zip,
  });
  
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  
  final String street;
  final String city;
  final String state;
  final String zip;

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
