// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:storyapp_intermediate/data/models/request/request_add_model.dart';
import 'package:storyapp_intermediate/data/models/response/response_add_story_model.dart';
import 'package:storyapp_intermediate/data/remote_datasources/story_datasources.dart';

part 'add_new_story_bloc.freezed.dart';
part 'add_new_story_event.dart';
part 'add_new_story_state.dart';

class AddNewStoryBloc extends Bloc<AddNewStoryEvent, AddNewStoryState> {
  final StoryDatasource datasource;
  AddNewStoryBloc(
    this.datasource,
  ) : super(const _Initial()) {
    on<_Add>((event, emit) async {
      emit(const _Loading());
      final uploadResult = await datasource.addNewStory(event.model);

      uploadResult.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
