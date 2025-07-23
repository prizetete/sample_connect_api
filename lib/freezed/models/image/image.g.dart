// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Image _$ImageFromJson(Map<String, dynamic> json) => _Image(
  imageUrl: json['imageUrl'] as String,
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  boxFit: $enumDecode(_$ImageBoxFitEnumMap, json['boxFit']),
  borderRadius: (json['borderRadius'] as num).toDouble(),
  borderWidth: (json['borderWidth'] as num).toDouble(),
);

Map<String, dynamic> _$ImageToJson(_Image instance) => <String, dynamic>{
  'imageUrl': instance.imageUrl,
  'width': instance.width,
  'height': instance.height,
  'boxFit': _$ImageBoxFitEnumMap[instance.boxFit]!,
  'borderRadius': instance.borderRadius,
  'borderWidth': instance.borderWidth,
};

const _$ImageBoxFitEnumMap = {
  ImageBoxFit.cover: 'cover',
  ImageBoxFit.contain: 'contain',
  ImageBoxFit.fill: 'fill',
  ImageBoxFit.fitWidth: 'fitWidth',
  ImageBoxFit.fitHeight: 'fitHeight',
  ImageBoxFit.none: 'none',
};
