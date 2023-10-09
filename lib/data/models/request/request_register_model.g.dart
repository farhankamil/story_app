// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestRegisterModel _$$_RequestRegisterModelFromJson(
        Map<String, dynamic> json) =>
    _$_RequestRegisterModel(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_RequestRegisterModelToJson(
        _$_RequestRegisterModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
