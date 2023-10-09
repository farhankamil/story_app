// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestRegisterModel _$RequestRegisterModelFromJson(Map<String, dynamic> json) {
  return _RequestRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RequestRegisterModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRegisterModelCopyWith<RequestRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRegisterModelCopyWith<$Res> {
  factory $RequestRegisterModelCopyWith(RequestRegisterModel value,
          $Res Function(RequestRegisterModel) then) =
      _$RequestRegisterModelCopyWithImpl<$Res, RequestRegisterModel>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$RequestRegisterModelCopyWithImpl<$Res,
        $Val extends RequestRegisterModel>
    implements $RequestRegisterModelCopyWith<$Res> {
  _$RequestRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_RequestRegisterModelCopyWith<$Res>
    implements $RequestRegisterModelCopyWith<$Res> {
  factory _$$_RequestRegisterModelCopyWith(_$_RequestRegisterModel value,
          $Res Function(_$_RequestRegisterModel) then) =
      __$$_RequestRegisterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$_RequestRegisterModelCopyWithImpl<$Res>
    extends _$RequestRegisterModelCopyWithImpl<$Res, _$_RequestRegisterModel>
    implements _$$_RequestRegisterModelCopyWith<$Res> {
  __$$_RequestRegisterModelCopyWithImpl(_$_RequestRegisterModel _value,
      $Res Function(_$_RequestRegisterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_RequestRegisterModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_RequestRegisterModel implements _RequestRegisterModel {
  const _$_RequestRegisterModel(
      {required this.name, required this.email, required this.password});

  factory _$_RequestRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestRegisterModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestRegisterModel(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestRegisterModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestRegisterModelCopyWith<_$_RequestRegisterModel> get copyWith =>
      __$$_RequestRegisterModelCopyWithImpl<_$_RequestRegisterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestRegisterModelToJson(
      this,
    );
  }
}

abstract class _RequestRegisterModel implements RequestRegisterModel {
  const factory _RequestRegisterModel(
      {required final String name,
      required final String email,
      required final String password}) = _$_RequestRegisterModel;

  factory _RequestRegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RequestRegisterModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RequestRegisterModelCopyWith<_$_RequestRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
