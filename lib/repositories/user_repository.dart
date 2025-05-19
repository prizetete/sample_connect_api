import 'package:sample_connect_api/freezed/models/user/user.dart';

abstract class IUserRepository {
  Future<List<User>> fetchUsers();
  Future<User> fetchUserById(int id);
  // Future<User> createUser(User user);
  // Future<User> updateUser(int id, User user);
  // Future<void> deleteUser(int id);
}
