// import 'dart:convert';

// import 'package:camera/camera.dart';

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // description as string
// // photo as file, must be a valid image file, max size 1MB
// // lat as float, optional
// // lon as float, optional

// // class RequestAddStoryModel {
// //   String? description;
// //   List<String>? photo;
// //   RequestAddStoryModel({
// //     required this.description,
// //     this.photo = const [
// //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwm7JasTw3bd-cgrMyh3LoCdbHtnc0OT50N_TbKqhJHP2Ql7PXMjV083SxSYZd_yDEoZs&usqp=CAU"
// //     ],
// //   });

// //   Map<String, dynamic> toMap() {
// //     return <String, dynamic>{
// //       'description': description,
// //       'photo': photo,
// //     };
// //   }

// //   factory RequestAddStoryModel.fromMap(Map<String, dynamic> map) {
// //     return RequestAddStoryModel(
// //       description:
// //           map['description'] != null ? map['description'] as String : null,
// //       photo: map['photo'] != null
// //           ? List<String>.from((map['photo'] as List<String>))
// //           : null,
// //     );
// //   }

// //   String toJson() => json.encode(toMap());

// //   factory RequestAddStoryModel.fromJson(String source) =>
// //       RequestAddStoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
// // }

// class RequestAddStoryModel {
//   String? description;
//   // XFile? photo; // Gunakan String untuk menyimpan URL gambar
//   List<String> photo;

//   RequestAddStoryModel({
//     required this.description,
//     // this.photo,
//     this.photo = const [
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwm7JasTw3bd-cgrMyh3LoCdbHtnc0OT50N_TbKqhJHP2Ql7PXMjV083SxSYZd_yDEoZs&usqp=CAU'
//     ], // Tambahkan parameter photoUrl
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'description': description,
//       'photo': photo, // Gunakan photoUrl untuk mengisi nilai photo
//     };
//   }

//   factory RequestAddStoryModel.fromMap(Map<String, dynamic> map) {
//     return RequestAddStoryModel(
//       description: map['description'],
//       photo: map['photo'], // Ambil nilai dari photo dan masukkan ke photoUrl
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory RequestAddStoryModel.fromJson(String source) =>
//       RequestAddStoryModel.fromMap(json.decode(source));

//   RequestAddStoryModel copyWith({
//     String? description,
//     List<String>? photo,
//   }) {
//     return RequestAddStoryModel(
//       description: description ?? this.description,
//       photo: photo ?? this.photo,
//     );
//   }
// }
