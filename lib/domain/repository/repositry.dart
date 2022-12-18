import 'package:dartz/dartz.dart';
import 'package:lavie/domain/models/login_model.dart';


import '../../data/network/failure/failure.dart';
import '../../data/network/request/request.dart';

abstract class Repositry{
  Future< Either<Failure,LoginModel>> login(LoginRequest loginRequest);

}