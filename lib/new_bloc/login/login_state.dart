// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginLoaded extends LoginState {
  final LoginResponseModel loginResponseModel;

  LoginLoaded({required this.loginResponseModel});
}

// final class LoginError extends LoginState {}

class LoginMessage extends LoginState {
  // final LoginResponseModel loginResponseModel;
  final String message;

  LoginMessage({
    required this.message,
  });
}
