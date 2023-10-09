// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseRegisterModel _$ResponseRegisterModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseRegisterModel {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRegisterModelCopyWith<ResponseRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRegisterModelCopyWith<$Res> {
  factory $ResponseRegisterModelCopyWith(ResponseRegisterModel value,
          $Res Function(ResponseRegisterModel) then) =
      _$ResponseRegisterModelCopyWithImpl<$Res, ResponseRegisterModel>;
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class _$ResponseRegisterModelCopyWithImpl<$Res,
        $Val extends ResponseRegisterModel>
    implements $ResponseRegisterModelCopyWith<$Res> {
  _$ResponseRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseRegisterModelCopyWith<$Res>
    implements $ResponseRegisterModelCopyWith<$Res> {
  factory _$$_ResponseRegisterModelCopyWith(_$_ResponseRegisterModel value,
          $Res Function(_$_ResponseRegisterModel) then) =
      __$$_ResponseRegisterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class __$$_ResponseRegisterModelCopyWithImpl<$Res>
    extends _$ResponseRegisterModelCopyWithImpl<$Res, _$_ResponseRegisterModel>
    implements _$$_ResponseRegisterModelCopyWith<$Res> {
  __$$_ResponseRegisterModelCopyWithImpl(_$_ResponseRegisterModel _value,
      $Res Function(_$_ResponseRegisterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$_ResponseRegisterModel(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseRegisterModel implements _ResponseRegisterModel {
  const _$_ResponseRegisterModel({required this.error, required this.message});

  factory _$_ResponseRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseRegisterModelFromJson(json);

  @override
  final bool error;
  @override
  final String message;

  @override
  String toString() {
    return 'ResponseRegisterModel(error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseRegisterModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseRegisterModelCopyWith<_$_ResponseRegisterModel> get copyWith =>
      __$$_ResponseRegisterModelCopyWithImpl<_$_ResponseRegisterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseRegisterModelToJson(
      this,
    );
  }
}

abstract class _ResponseRegisterModel implements ResponseRegisterModel {
  const factory _ResponseRegisterModel(
      {required final bool error,
      required final String message}) = _$_ResponseRegisterModel;

  factory _ResponseRegisterModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseRegisterModel.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseRegisterModelCopyWith<_$_ResponseRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
