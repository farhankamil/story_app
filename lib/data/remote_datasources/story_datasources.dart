import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';
import 'package:storyapp_intermediate/data/local_datasources/auth_localstorage.dart';

import '../../common/constans.dart';

class StoryDatasource {
  Future<Either<String, ResponseGetAllStoriesModel>> getAll() async {
    final token = await AuthLocalDatasource().getToken();

    final response = await http.get(
      Uri.parse('${Constants.baseUrl}/stories'),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode == 200) {
      return Right(
        ResponseGetAllStoriesModel.fromJson(
          json.decode(response.body),
        ),
      );
    } else {
      return const Left('API ERROR');
    }
  }
}
