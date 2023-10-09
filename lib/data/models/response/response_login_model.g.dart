// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseLoginModel _$$_ResponseLoginModelFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseLoginModel(
      error: json['error'] as bool,
      message: json['message'] as String,
      loginResult:
          LoginResult.fromJson(json['loginResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseLoginModelToJson(
        _$_ResponseLoginModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'loginResult': instance.loginResult,
    };

_$_LoginResult _$$_LoginResultFromJson(Map<String, dynamic> json) =>
    _$_LoginResult(
      userId: json['userId'] as String,
      name: json['name'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_LoginResultToJson(_$_LoginResult instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'token': instance.token,
    };
