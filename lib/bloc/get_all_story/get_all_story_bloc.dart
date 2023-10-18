// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:storyapp_intermediate/data/models/request/request_add_model.dart';

import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';
import 'package:storyapp_intermediate/data/remote_datasources/story_datasources.dart';

part 'get_all_story_bloc.freezed.dart';
part 'get_all_story_event.dart';
part 'get_all_story_state.dart';

class GetAllStoryBloc extends Bloc<GetAllStoryEvent, GetAllStoryState> {
  final StoryDatasource datasource;

  GetAllStoryBloc(
    this.datasource,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await datasource.getAll();
      result.fold(
        (l) => emit(const _Error()),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:storyapp_intermediate/bloc/get_all_story/get_all_story_event.dart';
// import 'package:storyapp_intermediate/bloc/get_all_story/get_all_story_state.dart';
// import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';

// import '../../data/remote_datasources/story_datasources.dart';

// class GetAllStoryBloc extends Bloc<GetAllStoryEvent, GetAllStoryState> {
//   final StoryDatasource usecases;
//   GetAllStoryBloc(
//     this.usecases,
//   ) : super(GetAllStoryInitial()) {
//     on<DoGetAllStoryGetEvent>((event, emit) async {
//       emit(GetAllStoryLoading());
//       final result = await usecases.getAll();
//       result.fold(
//         (l) => emit(GetAllStoryError(message: l)),
//         (r) => emit(GetAllStoryLoaded(movies: r)),
//       );
//     });
//   }
// }
