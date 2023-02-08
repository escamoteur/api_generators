import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  Order({
    required this.id,
    required this.petId,
    required this.quantity,
    required this.shipDate,
    required this.status,
    required this.complete,
  });
  
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  
  final int id;
  final int petId;
  final int quantity;
  final String shipDate;
  final String status;
  final bool complete;

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
