import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;

import 'package:dartz/dartz.dart';
import 'package:storyapp_intermediate/data/models/new_request/add_newstory_request_model.dart';
import 'package:storyapp_intermediate/data/models/new_response/add_newstory_response_model.dart';
import 'package:storyapp_intermediate/data/models/new_response/detail_response_model.dart';

import '../../common/constans.dart';
import '../local_datasources/auth_localstorage.dart';
import '../models/new_response/get_all_model.dart';

class StoryDatasource {
  Future<Either<String, GetAllStoryModel>> getAll() async {
    final token = await AuthLocalDatasource().getToken();

    final response = await http.get(
      Uri.parse('${Constants.baseUrl}/stories'),
      headers: {'Authorization': 'Bearer $token'},
    );
    print(response.body);
    if (response.statusCode == 200) {
      return Right(
        GetAllStoryModel.fromJson(
          json.decode(response.body),
        ),
      );
    } else {
      return const Left('API ERROR');
    }
  }

  Future<Either<String, DetailStoryResponseModel>> getDetailById(
      String id) async {
    final token = await AuthLocalDatasource().getToken();

    final response = await http.get(
      Uri.parse('${Constants.baseUrl}/stories/$id'),
      headers: {'Authorization': 'Bearer $token'},
    );
    print('id dari datasource $id');

    if (response.statusCode == 200) {
      return Right(
        DetailStoryResponseModel.fromJson(
          json.decode(response.body),
        ),
      );
    } else {
      return const Left('API ERROR');
    }
  }

  Future<Either<String, AddNewStoryResponseModel>> addNewStory(
      AddNewStoryRequestModel body) async {
    // try {
    final token = await AuthLocalDatasource().getToken();

    final uri = Uri.parse('${Constants.baseUrl}/stories');

    final newBytes = await compressImage(body.imageByte);

    final multiPartFile = http.MultipartFile.fromBytes(
      'photo',
      newBytes,
      filename: body.fileName,
    );

    final request = http.MultipartRequest('POST', uri);

    final fields = <String, String>{
      'description': body.description,
    };
    if (body.lat != null && body.lon != null) {
      fields.addAll(
        <String, String>{
          'lat': body.lat.toString(),
          'lon': body.lon.toString(),
        },
      );
    }
    final headers = <String, String>{
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'Content-type': 'multipart/form-data',
    };

    request.files.add(multiPartFile);
    request.fields.addAll(fields);
    request.headers.addAll(headers);

    final streamedResponse = await request.send();

    final responseList = await streamedResponse.stream.toBytes();
    final responseData = String.fromCharCodes(responseList);

    if (streamedResponse.statusCode == 201) {
      // return ResponseAddStoryModel.fromJson(
      //   json.decode(responseData) as Map<String, dynamic>,
      // );
      return Right(
        AddNewStoryResponseModel.fromJson(
          json.decode(responseData) as Map<String, dynamic>,
        ),
      );
    } else {
      // return ResponseAddStoryModel.fromJson(
      //   json.decode(responseData) as Map<String, dynamic>,
      // );
      return const Left('API ERROR');
    }
    // } on SocketException {
    //   return const ResponseAddStoryModel(
    //       error: true, message: 'No internet connection');
    // } catch (e) {
    //   throw Exception('Failed to get data');
    // }
  }

  Future<List<int>> compressImage(List<int> bytes) async {
    final imageLength = bytes.length;
    if (imageLength < 1000000) return bytes;

    final image = img.decodeImage(Uint8List.fromList(bytes))!;
    var compressQuality = 100;
    var length = imageLength;
    var newByte = <int>[];

    do {
      ///
      compressQuality -= 10;

      newByte = img.encodeJpg(
        image,
        quality: compressQuality,
      );

      length = newByte.length;
    } while (length > 1000000);

    return newByte;
  }
}
