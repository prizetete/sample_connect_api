// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Image {

 String get imageUrl; double get width; double get height; ImageBoxFit get boxFit;// วิธีการจัดรูปภาพภายในกล่อง
 double get borderRadius;// มุมโค้งของกล่อง
 double get borderWidth;
/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageCopyWith<Image> get copyWith => _$ImageCopyWithImpl<Image>(this as Image, _$identity);

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.boxFit, boxFit) || other.boxFit == boxFit)&&(identical(other.borderRadius, borderRadius) || other.borderRadius == borderRadius)&&(identical(other.borderWidth, borderWidth) || other.borderWidth == borderWidth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,width,height,boxFit,borderRadius,borderWidth);

@override
String toString() {
  return 'Image(imageUrl: $imageUrl, width: $width, height: $height, boxFit: $boxFit, borderRadius: $borderRadius, borderWidth: $borderWidth)';
}


}

/// @nodoc
abstract mixin class $ImageCopyWith<$Res>  {
  factory $ImageCopyWith(Image value, $Res Function(Image) _then) = _$ImageCopyWithImpl;
@useResult
$Res call({
 String imageUrl, double width, double height, ImageBoxFit boxFit, double borderRadius, double borderWidth
});




}
/// @nodoc
class _$ImageCopyWithImpl<$Res>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._self, this._then);

  final Image _self;
  final $Res Function(Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? width = null,Object? height = null,Object? boxFit = null,Object? borderRadius = null,Object? borderWidth = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,boxFit: null == boxFit ? _self.boxFit : boxFit // ignore: cast_nullable_to_non_nullable
as ImageBoxFit,borderRadius: null == borderRadius ? _self.borderRadius : borderRadius // ignore: cast_nullable_to_non_nullable
as double,borderWidth: null == borderWidth ? _self.borderWidth : borderWidth // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Image implements Image {
  const _Image({required this.imageUrl, required this.width, required this.height, required this.boxFit, required this.borderRadius, required this.borderWidth});
  factory _Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

@override final  String imageUrl;
@override final  double width;
@override final  double height;
@override final  ImageBoxFit boxFit;
// วิธีการจัดรูปภาพภายในกล่อง
@override final  double borderRadius;
// มุมโค้งของกล่อง
@override final  double borderWidth;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageCopyWith<_Image> get copyWith => __$ImageCopyWithImpl<_Image>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Image&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.boxFit, boxFit) || other.boxFit == boxFit)&&(identical(other.borderRadius, borderRadius) || other.borderRadius == borderRadius)&&(identical(other.borderWidth, borderWidth) || other.borderWidth == borderWidth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,width,height,boxFit,borderRadius,borderWidth);

@override
String toString() {
  return 'Image(imageUrl: $imageUrl, width: $width, height: $height, boxFit: $boxFit, borderRadius: $borderRadius, borderWidth: $borderWidth)';
}


}

/// @nodoc
abstract mixin class _$ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) _then) = __$ImageCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl, double width, double height, ImageBoxFit boxFit, double borderRadius, double borderWidth
});




}
/// @nodoc
class __$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(this._self, this._then);

  final _Image _self;
  final $Res Function(_Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? width = null,Object? height = null,Object? boxFit = null,Object? borderRadius = null,Object? borderWidth = null,}) {
  return _then(_Image(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,boxFit: null == boxFit ? _self.boxFit : boxFit // ignore: cast_nullable_to_non_nullable
as ImageBoxFit,borderRadius: null == borderRadius ? _self.borderRadius : borderRadius // ignore: cast_nullable_to_non_nullable
as double,borderWidth: null == borderWidth ? _self.borderWidth : borderWidth // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
