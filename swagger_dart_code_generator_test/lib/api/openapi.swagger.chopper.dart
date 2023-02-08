// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Openapi extends Openapi {
  _$Openapi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Openapi;

  @override
  Future<Response<Pet>> _petPut({required Pet? body}) {
    final $url = '/pet';
    final $body = body;
    final $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<Pet>> _petPost({required Pet? body}) {
    final $url = '/pet';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<List<Pet>>> _petFindByStatusGet({String? status}) {
    final $url = '/pet/findByStatus';
    final $params = <String, dynamic>{'status': status};
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Pet>, Pet>($request);
  }

  @override
  Future<Response<List<Pet>>> _petFindByTagsGet({List<String>? tags}) {
    final $url = '/pet/findByTags';
    final $params = <String, dynamic>{'tags': tags};
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Pet>, Pet>($request);
  }

  @override
  Future<Response<Pet>> _petPetIdGet({required num? petId}) {
    final $url = '/pet/${petId}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<dynamic>> _petPetIdPost({
    required num? petId,
    String? name,
    String? status,
  }) {
    final $url = '/pet/${petId}';
    final $params = <String, dynamic>{
      'name': name,
      'status': status,
    };
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _petPetIdDelete({
    String? apiKey,
    required num? petId,
  }) {
    final $url = '/pet/${petId}';
    final $headers = {
      if (apiKey != null) 'api_key': apiKey,
    };

    final $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ApiResponse>> _petPetIdUploadImagePost({
    required num? petId,
    String? additionalMetadata,
    required Object? body,
  }) {
    final $url = '/pet/${petId}/uploadImage';
    final $params = <String, dynamic>{'additionalMetadata': additionalMetadata};
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<Object>> _storeInventoryGet() {
    final $url = '/store/inventory';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Order>> _storeOrderPost({required Order? body}) {
    final $url = '/store/order';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Order, Order>($request);
  }

  @override
  Future<Response<Order>> _storeOrderOrderIdGet({required num? orderId}) {
    final $url = '/store/order/${orderId}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Order, Order>($request);
  }

  @override
  Future<Response<dynamic>> _storeOrderOrderIdDelete({required num? orderId}) {
    final $url = '/store/order/${orderId}';
    final $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _userPost({required User? body}) {
    final $url = '/user';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<User>> _userCreateWithListPost({required List<User>? body}) {
    final $url = '/user/createWithList';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<String>> _userLoginGet({
    String? username,
    String? password,
  }) {
    final $url = '/user/login';
    final $params = <String, dynamic>{
      'username': username,
      'password': password,
    };
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<dynamic>> _userLogoutGet() {
    final $url = '/user/logout';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<User>> _userUsernameGet({required String? username}) {
    final $url = '/user/${username}';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<dynamic>> _userUsernamePut({
    required String? username,
    required User? body,
  }) {
    final $url = '/user/${username}';
    final $body = body;
    final $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _userUsernameDelete({required String? username}) {
    final $url = '/user/${username}';
    final $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
