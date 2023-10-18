import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_add_model.freezed.dart';
part 'request_add_model.g.dart';

@freezed
class RequestAddModel with _$RequestAddModel {
  const factory RequestAddModel({
    required String description,
    required String fileName,
    required List<int> imageByte,
    required double? lat,
    required double? lon,
  }) = _RequestAddModel;

  factory RequestAddModel.fromJson(Map<String, dynamic> json) =>
      _$RequestAddModelFromJson(json);
}


