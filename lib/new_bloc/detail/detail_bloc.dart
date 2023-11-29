
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:storyapp_intermediate/data/models/new_response/detail_response_model.dart';

import '../../data/remote_datasources/story_datasources.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final StoryDatasource datasource;

  DetailBloc(
    this.datasource,
  ) : super(DetailInitial()) {
    on<GetDetailEvent>((event, emit) async {
      emit(DetailLoading());
      final result = await datasource.getDetailById(event.id);
      result.fold((l) => emit(DetailError()),
          (r) => emit(DetailLoaded(detailStory: r)));
    });
  }
}
