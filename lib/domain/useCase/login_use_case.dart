
import 'package:dartz/dartz.dart';



import '../../data/network/failure/failure.dart';
import '../../data/network/request/request.dart';
import '../models/login_model.dart';
import '../repository/repositry.dart';
import 'base_use_case.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput,LoginModel>{
  final Repositry _repositry;
  LoginUseCase(this._repositry);
  @override
  Future<Either<Failure, LoginModel>> execute(LoginUseCaseInput input)async {
   return await _repositry.login(LoginRequest(input.password, input.email));
  }
}

class LoginUseCaseInput{
  String email;
  String password;
  LoginUseCaseInput(this.email,this.password);
}