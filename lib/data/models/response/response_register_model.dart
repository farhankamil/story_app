import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_register_model.freezed.dart';
part 'response_register_model.g.dart';

@freezed
class ResponseRegisterModel with _$ResponseRegisterModel {
    const factory ResponseRegisterModel({
        required bool error,
        required String message,
    }) = _ResponseRegisterModel;

    factory ResponseRegisterModel.fromJson(Map<String, dynamic> json) => _$ResponseRegisterModelFromJson(json);
}
