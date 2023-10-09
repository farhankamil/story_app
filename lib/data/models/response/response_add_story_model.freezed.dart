// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_add_story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseAddStoryModel _$ResponseAddStoryModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseAddStoryModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseAddStoryModel {
  @JsonKey(name: "error")
  bool get error => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseAddStoryModelCopyWith<ResponseAddStoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAddStoryModelCopyWith<$Res> {
  factory $ResponseAddStoryModelCopyWith(ResponseAddStoryModel value,
          $Res Function(ResponseAddStoryModel) then) =
      _$ResponseAddStoryModelCopyWithImpl<$Res, ResponseAddStoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$ResponseAddStoryModelCopyWithImpl<$Res,
        $Val extends ResponseAddStoryModel>
    implements $ResponseAddStoryModelCopyWith<$Res> {
  _$ResponseAddStoryModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ResponseAddStoryModelCopyWith<$Res>
    implements $ResponseAddStoryModelCopyWith<$Res> {
  factory _$$_ResponseAddStoryModelCopyWith(_$_ResponseAddStoryModel value,
          $Res Function(_$_ResponseAddStoryModel) then) =
      __$$_ResponseAddStoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$_ResponseAddStoryModelCopyWithImpl<$Res>
    extends _$ResponseAddStoryModelCopyWithImpl<$Res, _$_ResponseAddStoryModel>
    implements _$$_ResponseAddStoryModelCopyWith<$Res> {
  __$$_ResponseAddStoryModelCopyWithImpl(_$_ResponseAddStoryModel _value,
      $Res Function(_$_ResponseAddStoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$_ResponseAddStoryModel(
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
class _$_ResponseAddStoryModel implements _ResponseAddStoryModel {
  const _$_ResponseAddStoryModel(
      {@JsonKey(name: "error") required this.error,
      @JsonKey(name: "message") required this.message});

  factory _$_ResponseAddStoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseAddStoryModelFromJson(json);

  @override
  @JsonKey(name: "error")
  final bool error;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'ResponseAddStoryModel(error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseAddStoryModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseAddStoryModelCopyWith<_$_ResponseAddStoryModel> get copyWith =>
      __$$_ResponseAddStoryModelCopyWithImpl<_$_ResponseAddStoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseAddStoryModelToJson(
      this,
    );
  }
}

abstract class _ResponseAddStoryModel implements ResponseAddStoryModel {
  const factory _ResponseAddStoryModel(
          {@JsonKey(name: "error") required final bool error,
          @JsonKey(name: "message") required final String message}) =
      _$_ResponseAddStoryModel;

  factory _ResponseAddStoryModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseAddStoryModel.fromJson;

  @override
  @JsonKey(name: "error")
  bool get error;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseAddStoryModelCopyWith<_$_ResponseAddStoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
