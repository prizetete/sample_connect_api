// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dog {

 String get message; String get status;
/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DogCopyWith<Dog> get copyWith => _$DogCopyWithImpl<Dog>(this as Dog, _$identity);

  /// Serializes this Dog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dog&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status);

@override
String toString() {
  return 'Dog(message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class $DogCopyWith<$Res>  {
  factory $DogCopyWith(Dog value, $Res Function(Dog) _then) = _$DogCopyWithImpl;
@useResult
$Res call({
 String message, String status
});




}
/// @nodoc
class _$DogCopyWithImpl<$Res>
    implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._self, this._then);

  final Dog _self;
  final $Res Function(Dog) _then;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Dog implements Dog {
  const _Dog({required this.message, required this.status});
  factory _Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);

@override final  String message;
@override final  String status;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DogCopyWith<_Dog> get copyWith => __$DogCopyWithImpl<_Dog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dog&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status);

@override
String toString() {
  return 'Dog(message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DogCopyWith<$Res> implements $DogCopyWith<$Res> {
  factory _$DogCopyWith(_Dog value, $Res Function(_Dog) _then) = __$DogCopyWithImpl;
@override @useResult
$Res call({
 String message, String status
});




}
/// @nodoc
class __$DogCopyWithImpl<$Res>
    implements _$DogCopyWith<$Res> {
  __$DogCopyWithImpl(this._self, this._then);

  final _Dog _self;
  final $Res Function(_Dog) _then;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,}) {
  return _then(_Dog(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
