// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_add_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestAddModel _$RequestAddModelFromJson(Map<String, dynamic> json) {
  return _RequestAddModel.fromJson(json);
}

/// @nodoc
mixin _$RequestAddModel {
  String get description => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  List<int> get imageByte => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestAddModelCopyWith<RequestAddModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAddModelCopyWith<$Res> {
  factory $RequestAddModelCopyWith(
          RequestAddModel value, $Res Function(RequestAddModel) then) =
      _$RequestAddModelCopyWithImpl<$Res, RequestAddModel>;
  @useResult
  $Res call(
      {String description,
      String fileName,
      List<int> imageByte,
      double? lat,
      double? lon});
}

/// @nodoc
class _$RequestAddModelCopyWithImpl<$Res, $Val extends RequestAddModel>
    implements $RequestAddModelCopyWith<$Res> {
  _$RequestAddModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? fileName = null,
    Object? imageByte = null,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      imageByte: null == imageByte
          ? _value.imageByte
          : imageByte // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestAddModelCopyWith<$Res>
    implements $RequestAddModelCopyWith<$Res> {
  factory _$$_RequestAddModelCopyWith(
          _$_RequestAddModel value, $Res Function(_$_RequestAddModel) then) =
      __$$_RequestAddModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String fileName,
      List<int> imageByte,
      double? lat,
      double? lon});
}

/// @nodoc
class __$$_RequestAddModelCopyWithImpl<$Res>
    extends _$RequestAddModelCopyWithImpl<$Res, _$_RequestAddModel>
    implements _$$_RequestAddModelCopyWith<$Res> {
  __$$_RequestAddModelCopyWithImpl(
      _$_RequestAddModel _value, $Res Function(_$_RequestAddModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? fileName = null,
    Object? imageByte = null,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_RequestAddModel(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      imageByte: null == imageByte
          ? _value._imageByte
          : imageByte // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestAddModel implements _RequestAddModel {
  const _$_RequestAddModel(
      {required this.description,
      required this.fileName,
      required final List<int> imageByte,
      required this.lat,
      required this.lon})
      : _imageByte = imageByte;

  factory _$_RequestAddModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestAddModelFromJson(json);

  @override
  final String description;
  @override
  final String fileName;
  final List<int> _imageByte;
  @override
  List<int> get imageByte {
    if (_imageByte is EqualUnmodifiableListView) return _imageByte;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageByte);
  }

  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'RequestAddModel(description: $description, fileName: $fileName, imageByte: $imageByte, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestAddModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            const DeepCollectionEquality()
                .equals(other._imageByte, _imageByte) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, fileName,
      const DeepCollectionEquality().hash(_imageByte), lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestAddModelCopyWith<_$_RequestAddModel> get copyWith =>
      __$$_RequestAddModelCopyWithImpl<_$_RequestAddModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestAddModelToJson(
      this,
    );
  }
}

abstract class _RequestAddModel implements RequestAddModel {
  const factory _RequestAddModel(
      {required final String description,
      required final String fileName,
      required final List<int> imageByte,
      required final double? lat,
      required final double? lon}) = _$_RequestAddModel;

  factory _RequestAddModel.fromJson(Map<String, dynamic> json) =
      _$_RequestAddModel.fromJson;

  @override
  String get description;
  @override
  String get fileName;
  @override
  List<int> get imageByte;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  @JsonKey(ignore: true)
  _$$_RequestAddModelCopyWith<_$_RequestAddModel> get copyWith =>
      throw _privateConstructorUsedError;
}
