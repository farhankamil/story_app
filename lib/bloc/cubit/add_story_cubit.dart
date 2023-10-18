// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:storyapp_intermediate/data/models/request/request_add_model.dart';
// import 'package:storyapp_intermediate/data/remote_datasources/story_datasources.dart';

// part 'add_story_state.dart';

// class AddStoryCubit extends Cubit<AddStoryState> {
//   AddStoryCubit(this.storyService) : super(AddStoryInitial());

//   Future<void> addStory(RequestAddModel body) async {
//     emit(AddStoryLoading());

//     final result = await storyService.addNewStory(body);

//     // if (!result.error) {
//     //   emit(AddStorySuccess(result));
//     // } else {
//     //   emit(AddStoryFailure(result.message!));
//     // }

//     result.fold(
//       (l) => emit(AddStoryFailure(l)),
//       (r) => emit(AddStorySuccess(r)),
//     );
//   }

//   final StoryDatasource storyService;
// }
