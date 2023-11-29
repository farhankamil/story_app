part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpLoaded extends SignUpState {
  final RegisterResponseModel registerResponse;

  SignUpLoaded({required this.registerResponse});
}

final class SignUpError extends SignUpState {}

final class SignUpMessage extends SignUpState {
  final String errorMessage;

  SignUpMessage({required this.errorMessage});
}
