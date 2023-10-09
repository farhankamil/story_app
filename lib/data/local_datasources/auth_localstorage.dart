import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';

import '../models/response/response_login_model.dart';

// class AuthLocalDatasource {
//   Future<String> saveToken(String token) async {
//     final pref = await SharedPreferences.getInstance();
//     await pref.setString('token', token);
//     return token;
//   }

//   Future<String> getToken() async {
//     final pref = await SharedPreferences.getInstance();
//     return pref.getString('token')!;
//   }

//   Future<bool> isTokenExist() async {
//     final pref = await SharedPreferences.getInstance();
//     return pref.getString('token') != null;
//   }

//   Future<bool> removeToken() async {
//     final pref = await SharedPreferences.getInstance();
//     return pref.remove('token');
//   }
// }

class AuthLocalDatasource {
  Future<bool> saveAuthData(LoginResult model) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = await pref.setString('auth', jsonEncode(model.toJson()));
    print('Token yang disimpan: ${model.token}');
    return res;
  }

  Future<String> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authData = LoginResult.fromJson(jsonDecode(authJson));
    return authData.token;
  }

  Future<bool> removeAuthData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove('auth');
  }

  Future<String> getUserId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authData = LoginResult.fromJson(jsonDecode(authJson));
    print('userID yang disimpan: ${authData.userId}');

    return authData.userId;
  }

  Future<bool> isLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';

    return authJson.isNotEmpty;
  }
}
