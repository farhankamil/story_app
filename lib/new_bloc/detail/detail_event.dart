part of 'detail_bloc.dart';

@immutable
abstract class DetailEvent {}

class GetDetailEvent extends DetailEvent {
  final String id;

  GetDetailEvent({required this.id});
}
