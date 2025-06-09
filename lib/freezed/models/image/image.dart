import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_connect_api/screens/components/image_screen.dart';
part 'image.freezed.dart';
part 'image.g.dart';

@freezed
abstract class Image with _$Image {
  const factory Image({
    required String imageUrl,
    required double width,
    required double height,
    required ImageBoxFit boxFit, // วิธีการจัดรูปภาพภายในกล่อง
    required double borderRadius, // มุมโค้งของกล่อง
    required double borderWidth, // ขอบของกล่อง
    // JSONPlaceholder มีเพียง field พื้นฐานเหล่านี้
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
