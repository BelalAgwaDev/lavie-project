import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lavie/presentation/screen/login/cubit/login_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/dataSource/remote/remote_data_source.dart';
import '../data/network/api/app_api.dart';
import '../data/network/dio_factory/dio_factory.dart';
import '../data/network/network_info/network_info.dart';
import '../data/repository/repository_impl.dart';
import '../domain/repository/repositry.dart';
import '../domain/useCase/login_use_case.dart';
import 'app_prefs.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  // app module ,its a module where we put all generic dependencies

  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

//app prefs instance
  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

  //network info instance
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));

//dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));

  //app service client
  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  // remote data source
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance()));

  //repository
  instance.registerLazySingleton<Repositry>(
      () => RepositoryImpl(instance(), instance()));
}

 initLoginModule()  {
  if (!GetIt.I.isRegistered<LoginUseCase>()){
    instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
    instance.registerFactory<LoginCubit>(() => LoginCubit(instance()));
  }

}
