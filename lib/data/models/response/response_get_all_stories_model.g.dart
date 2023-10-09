// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_all_stories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseGetAllStoriesModel _$$_ResponseGetAllStoriesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseGetAllStoriesModel(
      error: json['error'] as bool,
      message: json['message'] as String,
      listStory: (json['listStory'] as List<dynamic>)
          .map((e) => ListStory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseGetAllStoriesModelToJson(
        _$_ResponseGetAllStoriesModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'listStory': instance.listStory,
    };

_$_ListStory _$$_ListStoryFromJson(Map<String, dynamic> json) => _$_ListStory(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$_ListStoryToJson(_$_ListStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
    };
