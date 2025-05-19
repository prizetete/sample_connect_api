// lib/core/api/api_client.dart
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sample_connect_api/constant.dart';
import 'package:sample_connect_api/freezed/models/user/user.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Constants.usersPath)
  Future<List<User>> getUsers();

  @GET(Constants.userByIdPath)
  Future<User> getUserById(@Path('id') int id);
}

// **Retrofit มีหน้าที่ในการสร้างโค้ดที่จำเป็นสำหรับการทำงานกับ API โดยอัตโนมัติ
// โดยใช้ annotation ที่กำหนดไว้ใน interface ApiClient
// เช่น @GET, @POST, @PUT, @DELETE เป็นต้น
// ซึ่งจะช่วยให้เราสามารถเรียกใช้งาน API ได้ง่ายขึ้น
// ส่วน Dio จะทำหน้าที่ในการจัดการการเชื่อมต่อกับ API
// โดยมีการจัดการการเชื่อมต่อ การส่งข้อมูล และการรับข้อมูลจาก API
