import 'package:freezed_annotation/freezed_annotation.dart';
part 'dog.freezed.dart';
part 'dog.g.dart';

@freezed
abstract class Dog with _$Dog {
  const factory Dog({
    required String message,
    required String status,
    // JSONPlaceholder มีเพียง field พื้นฐานเหล่านี้
  }) = _Dog;

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
}
