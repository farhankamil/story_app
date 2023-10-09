import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_login_model.freezed.dart';
part 'response_login_model.g.dart';

@freezed
class ResponseLoginModel with _$ResponseLoginModel {
    const factory ResponseLoginModel({
        required bool error,
        required String message,
        required LoginResult loginResult,
    }) = _ResponseLoginModel;

    factory ResponseLoginModel.fromJson(Map<String, dynamic> json) => _$ResponseLoginModelFromJson(json);
}

@freezed
class LoginResult with _$LoginResult {
    const factory LoginResult({
        required String userId,
        required String name,
        required String token,
    }) = _LoginResult;

    factory LoginResult.fromJson(Map<String, dynamic> json) => _$LoginResultFromJson(json);
}
