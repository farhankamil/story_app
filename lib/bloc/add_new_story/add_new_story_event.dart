part of 'add_new_story_bloc.dart';

@freezed
class AddNewStoryEvent with _$AddNewStoryEvent {
  const factory AddNewStoryEvent.started() = _Started;
    const factory AddNewStoryEvent.add(
    RequestAddModel model,
    // XFile image,
  ) = _Add;
}