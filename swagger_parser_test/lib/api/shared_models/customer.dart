import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
  const Customer({
    required this.id,
    required this.username,
    required this.address,
  });
  
  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
  
  final int id;
  final String username;
  final List<Address> address;

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
