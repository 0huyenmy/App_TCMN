import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'base_api.g.dart';

@RestApi()
abstract class BaseApi {
  factory BaseApi(Dio dio, {String baseUrl}) = _BaseApi;

  // @POST('api/check-login')
  // Future<DefaultModel<LoginModel>> sendPhone(@Body() Map<String, dynamic> data);
}
