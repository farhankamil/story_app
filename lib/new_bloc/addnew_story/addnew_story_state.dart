part of 'addnew_story_bloc.dart';

@immutable
sealed class AddnewStoryState {}

final class AddnewStoryInitial extends AddnewStoryState {}

final class AddnewStoryLoading extends AddnewStoryState {}

final class AddnewStoryLoaded extends AddnewStoryState {
  final AddNewStoryResponseModel addStoryResponse;

  AddnewStoryLoaded({required this.addStoryResponse});
}

final class AddnewStoryError extends AddnewStoryState {
  final String errorMessage;

  AddnewStoryError({required this.errorMessage});
}
