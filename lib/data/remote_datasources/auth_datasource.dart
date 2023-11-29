import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:storyapp_intermediate/data/models/new_request/login_request_model.dart';
import 'package:storyapp_intermediate/data/models/new_request/register_request_model.dart';
import 'package:storyapp_intermediate/data/models/new_response/login_response_model.dart';
import 'package:storyapp_intermediate/data/models/new_response/register_response_mode.dart';
import '../../common/constans.dart';

class AuthDatasource {
  Future<Either<String, RegisterResponseModel>> register(
    RegisterRequestModel registerData,
  ) async {
    final response = await http.post(
      Uri.parse("${Constants.baseUrl}/register"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(registerData.toJson()),
    );

    if (response.statusCode == 200) {
      return Right(
        RegisterResponseModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      return const Left(
        'Register Gagal',
      );
    }
  }

  Future<Either<String, LoginResponseModel>> login(
    LoginRequestModel loginData,
  ) async {
    final response = await http.post(
      Uri.parse("${Constants.baseUrl}/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(loginData.toJson()),
    );

    if (response.statusCode == 200) {
      return Right(
        LoginResponseModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      return const Left(
        'Login Gagal',
      );
    }
  }
}
