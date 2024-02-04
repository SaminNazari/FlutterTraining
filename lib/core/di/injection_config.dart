import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_config.config.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: "init",
)
void configureDependencies()=>getIt.init();


@module
abstract class DataModule{


  @lazySingleton
  Dio dio(){
    Dio dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      )
    );
    return dio;
  }


}