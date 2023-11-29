// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:storyapp_intermediate/data/models/new_request/add_newstory_request_model.dart';
import 'package:storyapp_intermediate/data/models/new_response/add_newstory_response_model.dart';

import '../../data/remote_datasources/story_datasources.dart';

part 'addnew_story_event.dart';
part 'addnew_story_state.dart';

class AddnewStoryBloc extends Bloc<AddnewStoryEvent, AddnewStoryState> {
  final StoryDatasource datasource;
  AddnewStoryBloc(
    this.datasource,
  ) : super(AddnewStoryInitial()) {
    on<DoAddnewStoryEvent>((event, emit) async {
      emit(AddnewStoryLoading());
      final uploadResult = await datasource.addNewStory(event.addStoryRequest);
      uploadResult.fold(
        (l) => emit(AddnewStoryError(errorMessage: l)),
        (r) => emit(AddnewStoryLoaded(addStoryResponse: r)),
      );
    });
  }
}
