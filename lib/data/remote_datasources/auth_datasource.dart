import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import '../../common/constans.dart';
import '../local_datasources/auth_localstorage.dart';
import '../models/request/request_login_model.dart';
import '../models/request/request_register_model.dart';
import '../models/response/response_login_model.dart';
import '../models/response/response_register_model.dart';

class AuthDatasource {
  Future<Either<String, ResponseRegisterModel>> register(
    RequestRegisterModel registerData,
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
        ResponseRegisterModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      return const Left(
        'API ERROR',
      );
    }
  }

  Future<Either<String, ResponseLoginModel>> login(
    RequestLoginModel loginData,
  ) async {
    final response = await http.post(
      Uri.parse("${Constants.baseUrl}/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(loginData.toJson()),
    );
    print('ini response dari login body : ${response.body}');
    if (response.statusCode == 200) {

      return Right(
        ResponseLoginModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      return const Left(
        'API ERROR',
      );
    }
  }
}
