// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:storyapp_intermediate/data/models/new_request/login_request_model.dart';
import 'package:storyapp_intermediate/data/models/new_response/login_response_model.dart';

import '../../data/remote_datasources/auth_datasource.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthDatasource datasource;

  LoginBloc(this.datasource) : super(LoginInitial()) {
    on<DoLoginEvent>((event, emit) async {
      emit(LoginLoading());
      final result = await datasource.login(event.loginRequestModel);
      result.fold(
        (l) => emit(LoginMessage(message: l)),
        (r) => emit(LoginLoaded(loginResponseModel: r)),
      );
    });
  }
}
