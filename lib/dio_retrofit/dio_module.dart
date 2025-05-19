import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_connect_api/constant.dart';
import 'package:sample_connect_api/dio_retrofit/api_client/api_client.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: Constants.baseUrl,
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 3),
    ),
  )..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  @lazySingleton
  ApiClient get apiClient => ApiClient(dio);
}
