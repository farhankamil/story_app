import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_add_story_model.freezed.dart';
part 'response_add_story_model.g.dart';

@freezed
class ResponseAddStoryModel with _$ResponseAddStoryModel {
    const factory ResponseAddStoryModel({
        required bool error,
        required String message,
    }) = _ResponseAddStoryModel;

    factory ResponseAddStoryModel.fromJson(Map<String, dynamic> json) => _$ResponseAddStoryModelFromJson(json);
}
