import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_register_model.freezed.dart';
part 'request_register_model.g.dart';

@freezed
class RequestRegisterModel with _$RequestRegisterModel {
  const factory RequestRegisterModel({
    required String name,
    required String email,
    required String password,
  }) = _RequestRegisterModel;

  factory RequestRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterModelFromJson(json);
}
