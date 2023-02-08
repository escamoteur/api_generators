// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as num?,
      petId: json['petId'] as num?,
      quantity: json['quantity'] as int?,
      shipDate: json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      status: orderStatusFromJson(json['status']),
      complete: json['complete'] as bool?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': orderStatusToJson(instance.status),
      'complete': instance.complete,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as num?,
      username: json['username'] as String?,
      address: (json['address'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'address': instance.address?.map((e) => e.toJson()).toList(),
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as num?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as num?,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      userStatus: json['userStatus'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'userStatus': instance.userStatus,
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      id: json['id'] as num?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Pet _$PetFromJson(Map<String, dynamic> json) => Pet(
      id: json['id'] as num?,
      name: json['name'] as String,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      photoUrls: (json['photoUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      status: petStatusFromJson(json['status']),
    );

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category?.toJson(),
      'photoUrls': instance.photoUrls,
      'tags': instance.tags?.map((e) => e.toJson()).toList(),
      'status': petStatusToJson(instance.status),
    };

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
      code: json['code'] as int?,
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
    };
