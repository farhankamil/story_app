import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/models/new_response/get_all_model.dart';
import '../../data/remote_datasources/story_datasources.dart';

part 'get_all_event.dart';
part 'get_all_state.dart';

class GetAllBloc extends Bloc<GetAllEvent, GetAllState> {
  final StoryDatasource datasource;

  GetAllBloc(this.datasource) : super(GetAllInitial()) {
    on<GetAllEvent>(
      (event, emit) async {
        emit(GetAllLoading());
        final result = await datasource.getAll();
        result.fold(
          (l) => emit(GetAllError()),
          (r) => emit(GetAllLoaded(getAllStory: r)),
        );

      },
    );
  }
}
