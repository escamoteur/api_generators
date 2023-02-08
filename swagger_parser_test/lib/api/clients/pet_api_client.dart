import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../shared_models/api_response.dart';
import '../shared_models/pet.dart';

part 'pet_api_client.g.dart';

@RestApi()
abstract class PetApiClient {
  factory PetApiClient(Dio dio, {String baseUrl}) = _PetApiClient;

  @PUT('/pet')
  Future<Pet> putPet({
    @Body() required Pet body,
  });

  @POST('/pet')
  Future<Pet> postPet({
    @Body() required Pet body,
  });

  @GET('/pet/findByStatus')
  Future<List<Pet>> getPetFindByStatus({
    @Query('status') String? status = 'available',
  });

  @GET('/pet/findByTags')
  Future<List<Pet>> getPetFindByTags({
    @Query('tags') List<String>? tags,
  });

  @GET('/pet/{petId}')
  Future<Pet> getPetPetId({
    @Path('petId') required int petId,
  });

  @POST('/pet/{petId}')
  Future<void> postPetPetId({
    @Path('petId') required int petId,
    @Query('name') required String name,
    @Query('status') required String status,
  });

  @DELETE('/pet/{petId}')
  Future<void> deletePetPetId({
    @Path('petId') required int petId,
    @Header('api_key') String? apiKey,
  });

  @POST('/pet/{petId}/uploadImage')
  Future<ApiResponse> postPetPetIdUploadImage({
    @Path('petId') required int petId,
    @Body() required File body,
    @Query('additionalMetadata') String? additionalMetadata,
  });
}
