import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../../application/constant.dart';
//part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {

  //factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;


  // @POST("/api/login")
  // Future<BaseResponses> login(
  //   @Field("national_id") String nationalId,
  //   @Field("password") String password,
  //
  // );
}
