import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_get_all_stories_model.freezed.dart';
part 'response_get_all_stories_model.g.dart';

@freezed
class ResponseGetAllStoriesModel with _$ResponseGetAllStoriesModel {
    const factory ResponseGetAllStoriesModel({
        required bool error,
        required String message,
        required List<ListStory> listStory,
    }) = _ResponseGetAllStoriesModel;

    factory ResponseGetAllStoriesModel.fromJson(Map<String, dynamic> json) => _$ResponseGetAllStoriesModelFromJson(json);
}

@freezed
class ListStory with _$ListStory {
    const factory ListStory({
        required String id,
        required String name,
        required String description,
        required String photoUrl,
    }) = _ListStory;

    factory ListStory.fromJson(Map<String, dynamic> json) => _$ListStoryFromJson(json);
}


// import 'package:equatable/equatable.dart';
// class ResponseGetAllStoriesModel extends Equatable {
//   final List<ListStory> listStory;

//   const ResponseGetAllStoriesModel({
//     required this.listStory,
//   });
//   factory ResponseGetAllStoriesModel.fromJson(Map<String, dynamic> json) =>
//       ResponseGetAllStoriesModel(
//           listStory: List<ListStory>.from((json["listStory"] as List)
//               .map((x) => ListStory.fromJson(x))
//               .where((element) => element.id != null)));

//   Map<String, dynamic> toJson() => {
//         "listStory": List<dynamic>.from(
//           listStory.map(
//             (x) => x.toJson(),
//           ),
//         ),
//       };
//   @override
//   List<Object?> get props => throw UnimplementedError();
// }

// class ListStory extends Equatable {
//   final String id;
//   final String name;
//   final String description;
//   final String photoUrl;

//   const ListStory({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.photoUrl,
//   });

//   @override
//   // TODO: implement props
//   List<Object> get props => [id, name, description, photoUrl];

//   factory ListStory.fromJson(Map<String, dynamic> json) => ListStory(
//         id: json['id'] ?? '',
//         name: json['name']?? '',
//         description: json['description']?? '',
//         photoUrl: json['photoUrl']?? '',
//       );

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'name': name,
//         'description': description,
//         'photoUrl': photoUrl,
//       };
// }
