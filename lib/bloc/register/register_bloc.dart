// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:storyapp_intermediate/data/models/request/request_register_model.dart';
import 'package:storyapp_intermediate/data/models/response/response_register_model.dart';
import 'package:storyapp_intermediate/data/remote_datasources/auth_datasource.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthDatasource datasource;
  RegisterBloc(
    this.datasource,
  ) : super(const _Initial()) {
    on<_Add>((event, emit) async {
      final result = await datasource.register(event.model);
      result.fold(
        (l) => emit(const _Error()),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
