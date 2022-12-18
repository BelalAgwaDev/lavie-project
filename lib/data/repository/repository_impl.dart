import 'package:dartz/dartz.dart';
import 'package:lavie/data/mapper/login/login_mapper.dart';

import '../../domain/models/login_model.dart';
import '../../domain/repository/repositry.dart';
import '../dataSource/remote/remote_data_source.dart';
import '../network/error_handler/error_handler.dart';
import '../network/failure/failure.dart';
import '../network/network_info/network_info.dart';
import '../network/request/request.dart';


class  RepositoryImpl implements Repositry{
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;
  RepositoryImpl(this._networkInfo,this._remoteDataSource);
  @override
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest) async{
 if(await _networkInfo.isConnected){
   //its  connected to internet ,its safe to call api


   try{
     final response=await _remoteDataSource.login(loginRequest);
     if(response.type==ApiInternalStatus.success){
       //success and return data
       return Right(response.toDomain());
     }else{
       //failure --return business error
       return left(Failure(ApiInternalStatus.failure, response.message?? ResponseMessage.unKnown));
     }
   }catch(error){
     return Left(ErrorHandler.handle(error).failure);
   }



 }else{
   //return  internet connection error
   return left(DataSource.noInternetConnection.getFailure());
 }
  }
}