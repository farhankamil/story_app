part of 'get_all_story_bloc.dart';

@freezed
class GetAllStoryState with _$GetAllStoryState {
  const factory GetAllStoryState.initial() = _Initial;
  const factory GetAllStoryState.loading() = _Loading;
  const factory GetAllStoryState.loaded(ResponseGetAllStoriesModel data) = _Loaded;
  const factory GetAllStoryState.error() = _Error;
}

// import 'package:equatable/equatable.dart';
// import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';

// abstract class GetAllStoryState extends Equatable {
//   const GetAllStoryState();

//   @override
//   List<Object> get props => [];
// }

// class GetAllStoryInitial extends GetAllStoryState {}

// class GetAllStoryLoading extends GetAllStoryState {}

// class GetAllStoryError extends GetAllStoryState {
//   final String message;
//   const GetAllStoryError({
//     required this.message,
//   });
//   @override
//   List<Object> get props => [message];
// }

// class GetAllStoryLoaded extends GetAllStoryState {
//   final List<ListStory> movies;
//   const GetAllStoryLoaded({
//     required this.movies,
//   });

//   @override
//   List<Object> get props => [movies];
// }
