import 'package:injectable/injectable.dart';
import 'package:sample_connect_api/dio_retrofit/api_client.dart';
import 'package:sample_connect_api/freezed/models/user.dart';
import 'package:sample_connect_api/repositories/user_repository.dart';

@LazySingleton(as: IUserRepository)
class UserRepositoryImpl implements IUserRepository {
  final ApiClient _apiClient;
  UserRepositoryImpl(this._apiClient);

  @override
  Future<List<User>> fetchUsers() async {
    return await _apiClient.getUsers();
  }

  @override
  Future<User> fetchUserById(int id) async {
    return await _apiClient.getUserById(id);
  }

  // @override
  // Future<User> createUser(User user) async {
  //   return await _apiClient.createUser(user);
  // }

  // @override
  // Future<User> updateUser(int id, User user) async {
  //   return await _apiClient.updateUser(id, user);
  // }

  // @override
  // Future<void> deleteUser(int id) async {
  //   await _apiClient.deleteUser(id);
  // }
}
