// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestLoginModel _$RequestLoginModelFromJson(Map<String, dynamic> json) {
  return _RequestLoginModel.fromJson(json);
}

/// @nodoc
mixin _$RequestLoginModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestLoginModelCopyWith<RequestLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLoginModelCopyWith<$Res> {
  factory $RequestLoginModelCopyWith(
          RequestLoginModel value, $Res Function(RequestLoginModel) then) =
      _$RequestLoginModelCopyWithImpl<$Res, RequestLoginModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$RequestLoginModelCopyWithImpl<$Res, $Val extends RequestLoginModel>
    implements $RequestLoginModelCopyWith<$Res> {
  _$RequestLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestLoginModelCopyWith<$Res>
    implements $RequestLoginModelCopyWith<$Res> {
  factory _$$_RequestLoginModelCopyWith(_$_RequestLoginModel value,
          $Res Function(_$_RequestLoginModel) then) =
      __$$_RequestLoginModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_RequestLoginModelCopyWithImpl<$Res>
    extends _$RequestLoginModelCopyWithImpl<$Res, _$_RequestLoginModel>
    implements _$$_RequestLoginModelCopyWith<$Res> {
  __$$_RequestLoginModelCopyWithImpl(
      _$_RequestLoginModel _value, $Res Function(_$_RequestLoginModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_RequestLoginModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestLoginModel implements _RequestLoginModel {
  const _$_RequestLoginModel({required this.email, required this.password});

  factory _$_RequestLoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestLoginModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestLoginModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLoginModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestLoginModelCopyWith<_$_RequestLoginModel> get copyWith =>
      __$$_RequestLoginModelCopyWithImpl<_$_RequestLoginModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestLoginModelToJson(
      this,
    );
  }
}

abstract class _RequestLoginModel implements RequestLoginModel {
  const factory _RequestLoginModel(
      {required final String email,
      required final String password}) = _$_RequestLoginModel;

  factory _RequestLoginModel.fromJson(Map<String, dynamic> json) =
      _$_RequestLoginModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RequestLoginModelCopyWith<_$_RequestLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
