part of 'get_all_bloc.dart';

@immutable
abstract class GetAllState {}

class GetAllInitial extends GetAllState {}

class GetAllLoading extends GetAllState {}

class GetAllLoaded extends GetAllState {
  final GetAllStoryModel getAllStory;

  GetAllLoaded({required this.getAllStory});
}

class GetAllError extends GetAllState {}
