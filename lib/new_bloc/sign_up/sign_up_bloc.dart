// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'package:storyapp_intermediate/data/models/new_request/register_request_model.dart';
import 'package:storyapp_intermediate/data/models/new_response/register_response_mode.dart';
import 'package:storyapp_intermediate/data/remote_datasources/auth_datasource.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthDatasource authDatasource;
  SignUpBloc(
    this.authDatasource,
  ) : super(SignUpInitial()) {
    on<DoSignUpEvent>((event, emit) async {
      emit(SignUpLoading());
      final result = await authDatasource.register(event.registerRequest);

      result.fold(
        (l) => emit(SignUpError()),
        (r) => emit(SignUpLoaded(registerResponse: r)),
      );
    });
  }
}
