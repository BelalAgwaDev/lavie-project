


import 'package:lavie/application/extensions.dart';

import '../../../application/constant.dart';
import '../../../domain/models/login_model.dart';
import '../../response/login/login_response.dart';


extension LoginResponsesMapper on LoginResponse?{
  LoginModel toDomain(){
    return LoginModel(
        this?.type.orEmpty()??Constant.empty,
        this?.message.orEmpty()??Constant.empty,
        this?.data.toDomain()

    ) ;
  }
}







extension DataMapper on Data?{
  DataModel toDomain(){
    return DataModel(
        this?.user.toDomain(),
        this?.accessToken.orEmpty()??Constant.empty,
        this?.refreshToken.orEmpty()??Constant.empty,
    );
  }
}




extension UserMapper on User?{
  UserModel toDomain(){
    return UserModel(
      this?.userId.orEmpty()?? Constant.empty,
      this?.firstName.orEmpty()?? Constant.empty,
      this?.lastName.orEmpty()?? Constant.empty,
      this?.email.orEmpty()?? Constant.empty,
      this?.imageUrl.orEmpty()?? Constant.empty,
      this?.role.orEmpty()?? Constant.empty,

    );
  }
}



