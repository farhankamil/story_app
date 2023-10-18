// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestAddModel _$$_RequestAddModelFromJson(Map<String, dynamic> json) =>
    _$_RequestAddModel(
      description: json['description'] as String,
      fileName: json['fileName'] as String,
      imageByte:
          (json['imageByte'] as List<dynamic>).map((e) => e as int).toList(),
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_RequestAddModelToJson(_$_RequestAddModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'fileName': instance.fileName,
      'imageByte': instance.imageByte,
      'lat': instance.lat,
      'lon': instance.lon,
    };
