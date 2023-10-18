import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_story_detail_model.freezed.dart';
part 'response_story_detail_model.g.dart';

@freezed
class ResponseStoryDetailModel with _$ResponseStoryDetailModel {
    const factory ResponseStoryDetailModel({
        required bool error,
        required String message,
        required Story story,
    }) = _ResponseStoryDetailModel;

    factory ResponseStoryDetailModel.fromJson(Map<String, dynamic> json) => _$ResponseStoryDetailModelFromJson(json);
}

@freezed
class Story with _$Story {
    const factory Story({
        required String id,
        required String name,
        required String description,
        required String photoUrl,
    }) = _Story;

    factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
