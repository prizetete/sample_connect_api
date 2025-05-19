import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String username,
    required String email,
    // JSONPlaceholder มีเพียง field พื้นฐานเหล่านี้
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// flutter pub run build_runner build --delete-conflicting-outputs // after this command, will automatically generate the user.freezed.dart and user.g.dart files
