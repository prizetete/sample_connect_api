import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:sample_connect_api/constant.dart';
import 'package:sample_connect_api/freezed/models/dog/dog.dart';

part 'api_dog.g.dart';

@RestApi()
abstract class ApiDog {
  factory ApiDog(Dio dio, {String baseUrl}) = _ApiDog;

  @GET(Constants.randomImagePath)
  Future<List<Dog>> getRandomDogImage();
}
