// import 'dart:convert';
// import 'dart:typed_data';

// import 'package:dartz/dartz.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import 'package:storyapp_intermediate/data/remote_datasources/auth_localstorage.dart';
// import 'package:storyapp_intermediate/data/models/request/request_add_story_model.dart';
// import 'package:storyapp_intermediate/data/models/request/request_login_model.dart';
// import 'package:storyapp_intermediate/data/models/request/request_register_model.dart';
// import 'package:storyapp_intermediate/data/models/response/response_add_story_model.dart';
// import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';
// import 'package:storyapp_intermediate/data/models/response/response_login_model.dart';
// import 'package:storyapp_intermediate/data/models/response/response_register_model.dart';

// import '../models/response/response_story_detail.dart';

// class ApiDatasource {
//   String baseUrl = 'https://story-api.dicoding.dev/v1';

//   Future<ResponseRegisterModel> register(
//       RequestRegisterModel requestRegisterModel) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/register'),
//       headers: {
//         // "Content-Type": "application/json",
//       },
//       body: requestRegisterModel.toMap(),
//     );
//     final result = ResponseRegisterModel.fromJson(response.body);
//     return result;
//   }

//   Future<ResponseLoginModel> login(RequestLoginModel requestLoginModel) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/login'),
//       body: requestLoginModel.toMap(),
//     );
//     final result = ResponseLoginModel.fromJson(response.body);
//     return result;
//   }

//   Future<List<ListStory>> getAllStories() async {
//     final token = await AuthLocalStorage().getToken();
//     final response = await http.get(
//       Uri.parse('$baseUrl/stories'),
//       headers: {'Authorization': 'Bearer $token'},
//     );
//     print("ini dari response body ${response.body}");

//     if (response.statusCode == 200) {
//       final result =
//           ResponseGetAllStories.fromJson(json.decode(response.body)).listStory;
//       print("ini dari result response $result");
//       return result;
//     } else {
//       throw "error ga bisa";
//     }
//   }

//   Future<ResponseStoryDetailModel> getStoryDetail(String storyId) async {
//     final token = await AuthLocalStorage().getToken();
//     final response = await http.get(
//       Uri.parse('$baseUrl/stories/$storyId'), // Menggunakan ID cerita dalam URL
//       headers: {'Authorization': 'Bearer $token'},
//     );

//     if (response.statusCode == 200) {
//       final result =
//           ResponseStoryDetailModel.fromJson(json.decode(response.body));
//       return result;
//     } else {
//       throw "Gagal mengambil detail cerita";
//     }
//   }

//   Future<Either<String, ResponseAddStoryModel>> createProduct(
//       RequestAddStoryModel requestAddStory) async {
//     final token = await AuthLocalStorage().getToken();
//     final response = await http.post(
//       Uri.parse('$baseUrl/stories'),
//       body: requestAddStory.toMap(),
//       headers: {
//         'Authorization': 'Bearer $token',
//         // 'Content-Type': 'multipart/form-data',
//       },
//     );

//     if (response.statusCode == 201) {
//       return Right(ResponseAddStoryModel.fromJson(
//           response.body as Map<String, dynamic>));
//     } else {
//       return const Left('Error Add Story');
//     }
//   }


  




//   Future<Either<String, ResponseAddStoryModel>> uploadImage(XFile image) async {
//     final request = http.MultipartRequest(
//       'POST',
//       Uri.parse('https://story-api.dicoding.dev/v1/stories'),
//     );
//     request.fields.addAll({'description': 'jangan panjang panjang blok'});
//     final bytes = await image.readAsBytes();

//     final multiPartFile =
//         http.MultipartFile.fromBytes('file', bytes, filename: image.name);

//     request.files.add(multiPartFile);
//     final token = await AuthLocalStorage().getToken();

//     request.headers['Authorization'] = 'Bearer $token';

//     http.StreamedResponse response = await request.send();

//     final Uint8List responseList = await response.stream.toBytes();
//     final String responseData = String.fromCharCodes(responseList);

//     if (response.statusCode == 201) {
//       return Right(ResponseAddStoryModel.fromJson(jsonDecode(responseData)));
//     } else {
//       return const Left('error upload image');
//     }
//   }

//   // Future<ResponseAddStoryModel> addNewStory(RequestAddStoryModel body) async {
//   //   // try {
//   //   //   final prefs = await SharedPreferences.getInstance();
//   //   //   final token = prefs.getString(KeyConstants.keyUserToken);
//   // final token = await AuthLocalStorage().getToken();

//   //     final uri = Uri.parse('https://story-api.dicoding.dev/v1/stories');

//   //     // final newBytes = await compressImage(body.imageByte);

//   //     final multiPartFile = http.MultipartFile.fromBytes(
//   //      'file', bytes, filename: image.name
//   //     );

//   //     final request = http.MultipartRequest('POST', uri);

//   //     final fields = <String, String>{
//   //       'description': body.description,
//   //     };
//   //     // if (body.lat != null && body.lon != null) {
//   //     //   fields.addAll(
//   //     //     <String, String>{
//   //     //       'lat': body.lat.toString(),
//   //     //       'lon': body.lon.toString(),
//   //     //     },
//   //     //   );
//   //     // }
//   //     final headers = <String, String>{
//   //       'Accept': 'application/json',
//   //       'Authorization': 'Bearer $token',
//   //       'Content-type': 'multipart/form-data',
//   //     };

//   //     request.files.add(multiPartFile);
//   //     request.fields.addAll(fields);
//   //     request.headers.addAll(headers);

//   //     final streamedResponse = await request.send();

//   //     final responseList = await streamedResponse.stream.toBytes();
//   //     final responseData = String.fromCharCodes(responseList);

//   //     if (streamedResponse.statusCode == 201) {
//   //       return DefaultModel.fromJson(
//   //         json.decode(responseData) as Map<String, dynamic>,
//   //       );
//   //     } else {
//   //       return DefaultModel.fromJson(
//   //         json.decode(responseData) as Map<String, dynamic>,
//   //       );
//   //     }
//   //   } on SocketException {
//   //     return DefaultModel(error: true, message: 'No internet connection');
//   //   } catch (e) {
//   //     throw Exception('Failed to get data');
//   //   }
//   // }
// }
