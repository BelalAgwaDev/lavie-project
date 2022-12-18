

import 'package:lavie/data/response/login/login_response.dart';

import '../../network/api/app_api.dart';
import '../../network/request/request.dart';

abstract class RemoteDataSource{
  Future<LoginResponse> login(LoginRequest loginRequest);
}


class RemoteDataSourceImpl  implements RemoteDataSource{
 final AppServiceClient  _appServiceClient;
 RemoteDataSourceImpl(this._appServiceClient);
  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async{
    return await _appServiceClient.login(loginRequest.password, loginRequest.email);
  }
}