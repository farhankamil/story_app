part of 'detail_bloc.dart';

@immutable
sealed class DetailState {}

final class DetailInitial extends DetailState {}

final class DetailLoading extends DetailState {}

final class DetailLoaded extends DetailState {
  final DetailStoryResponseModel detailStory;

  DetailLoaded({required this.detailStory});
}

final class DetailError extends DetailState {}
