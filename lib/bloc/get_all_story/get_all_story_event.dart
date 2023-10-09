part of 'get_all_story_bloc.dart';

@freezed
class GetAllStoryEvent with _$GetAllStoryEvent {
  const factory GetAllStoryEvent.started() = _Started;
  const factory GetAllStoryEvent.get() = _Get;
}

// import 'package:equatable/equatable.dart';

// abstract class GetAllStoryEvent extends Equatable {
//   const GetAllStoryEvent();

//   @override
//   List<Object> get props => [];
// }

// class DoGetAllStoryGetEvent extends GetAllStoryEvent {}
