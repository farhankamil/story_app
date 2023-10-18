part of 'add_new_story_bloc.dart';

@freezed
class AddNewStoryState with _$AddNewStoryState {
  const factory AddNewStoryState.initial() = _Initial;
   const factory AddNewStoryState.loading() = _Loading;
  const factory AddNewStoryState.loaded(ResponseAddStoryModel data) = _Loaded;
  const factory AddNewStoryState.error(String string) = _Error;
}
