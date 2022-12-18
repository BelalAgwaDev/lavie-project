import 'package:dio/dio.dart';
import 'package:lavie/data/response/login/login_response.dart';

import 'package:retrofit/retrofit.dart';

import '../../../application/constant.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {

  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;


  @POST("auth/signin")
  Future<LoginResponse> login(
    @Field("password") String password,
    @Field("email") String email,

  );
}
