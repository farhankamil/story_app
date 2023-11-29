part of 'addnew_story_bloc.dart';

@immutable
sealed class AddnewStoryEvent {}

class DoAddnewStoryEvent extends AddnewStoryEvent {
  final AddNewStoryRequestModel addStoryRequest;

  DoAddnewStoryEvent({required this.addStoryRequest});
}
