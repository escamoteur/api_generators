import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../shared_models/order.dart';

part 'store_api_client.g.dart';

@RestApi()
abstract class StoreApiClient {
  factory StoreApiClient(Dio dio, {String baseUrl}) = _StoreApiClient;

  @GET('/store/inventory')
  Future<Object> getStoreInventory();

  @POST('/store/order')
  Future<Order> postStoreOrder({
    @Body() required Order body,
  });

  @GET('/store/order/{orderId}')
  Future<Order> getStoreOrderOrderId({
    @Path('orderId') required int orderId,
  });

  @DELETE('/store/order/{orderId}')
  Future<void> deleteStoreOrderOrderId({
    @Path('orderId') required int orderId,
  });
}
