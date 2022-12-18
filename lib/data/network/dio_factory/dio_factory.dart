import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../application/app_prefs.dart';
import '../../../application/constant.dart';



const String applicationJson="application/json";
const String contentType="content-type";
const String accept="accept";
const String authorization="authorization";



class DioFactory{
  final AppPreferences _appPreferences;
  DioFactory(this._appPreferences);

  Future<Dio> getDio() async{
    Dio dio=Dio();

   // one min time out
    Map<String,String> headers=
    {
      contentType:applicationJson,
      accept:applicationJson,
     // authorization:Constant.token,


    };


    dio.options=BaseOptions(baseUrl: Constant.baseUrl,
        headers: headers,
        sendTimeout: Constant.apiTimeOut,
        receiveTimeout: Constant.apiTimeOut);

    if(!kReleaseMode){ //its debug mode so print app logs
      dio.interceptors.add(PrettyDioLogger(requestHeader: true,requestBody: true,responseHeader: true));
    }

    return dio;
  }
}