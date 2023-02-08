import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../shared_models/user.dart';

part 'user_api_client.g.dart';

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;

  @POST('/user')
  Future<void> postUser({
    @Body() required User body,
  });

  @POST('/user/createWithList')
  Future<User> postUserCreateWithList({
    @Body() required List<User> body,
  });

  @GET('/user/login')
  Future<String> getUserLogin({
    @Query('username') String? username,
    @Query('password') String? password,
  });

  @GET('/user/logout')
  Future<void> getUserLogout();

  @GET('/user/{username}')
  Future<User> getUserUsername({
    @Path('username') required String username,
  });

  @PUT('/user/{username}')
  Future<void> putUserUsername({
    @Path('username') required String username,
    @Body() required User body,
  });

  @DELETE('/user/{username}')
  Future<void> deleteUserUsername({
    @Path('username') required String username,
  });
}
