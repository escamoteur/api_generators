// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      petId: json['petId'] as int,
      quantity: json['quantity'] as int,
      shipDate: json['shipDate'] as String,
      status: json['status'] as String,
      complete: json['complete'] as bool,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate,
      'status': instance.status,
      'complete': instance.complete,
    };
