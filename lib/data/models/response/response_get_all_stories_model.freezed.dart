// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_get_all_stories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseGetAllStoriesModel _$ResponseGetAllStoriesModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseGetAllStoriesModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseGetAllStoriesModel {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ListStory> get listStory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetAllStoriesModelCopyWith<ResponseGetAllStoriesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetAllStoriesModelCopyWith<$Res> {
  factory $ResponseGetAllStoriesModelCopyWith(ResponseGetAllStoriesModel value,
          $Res Function(ResponseGetAllStoriesModel) then) =
      _$ResponseGetAllStoriesModelCopyWithImpl<$Res,
          ResponseGetAllStoriesModel>;
  @useResult
  $Res call({bool error, String message, List<ListStory> listStory});
}

/// @nodoc
class _$ResponseGetAllStoriesModelCopyWithImpl<$Res,
        $Val extends ResponseGetAllStoriesModel>
    implements $ResponseGetAllStoriesModelCopyWith<$Res> {
  _$ResponseGetAllStoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? listStory = null,
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
      listStory: null == listStory
          ? _value.listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as List<ListStory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseGetAllStoriesModelCopyWith<$Res>
    implements $ResponseGetAllStoriesModelCopyWith<$Res> {
  factory _$$_ResponseGetAllStoriesModelCopyWith(
          _$_ResponseGetAllStoriesModel value,
          $Res Function(_$_ResponseGetAllStoriesModel) then) =
      __$$_ResponseGetAllStoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, List<ListStory> listStory});
}

/// @nodoc
class __$$_ResponseGetAllStoriesModelCopyWithImpl<$Res>
    extends _$ResponseGetAllStoriesModelCopyWithImpl<$Res,
        _$_ResponseGetAllStoriesModel>
    implements _$$_ResponseGetAllStoriesModelCopyWith<$Res> {
  __$$_ResponseGetAllStoriesModelCopyWithImpl(
      _$_ResponseGetAllStoriesModel _value,
      $Res Function(_$_ResponseGetAllStoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? listStory = null,
  }) {
    return _then(_$_ResponseGetAllStoriesModel(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      listStory: null == listStory
          ? _value._listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as List<ListStory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseGetAllStoriesModel implements _ResponseGetAllStoriesModel {
  const _$_ResponseGetAllStoriesModel(
      {required this.error,
      required this.message,
      required final List<ListStory> listStory})
      : _listStory = listStory;

  factory _$_ResponseGetAllStoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseGetAllStoriesModelFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  final List<ListStory> _listStory;
  @override
  List<ListStory> get listStory {
    if (_listStory is EqualUnmodifiableListView) return _listStory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listStory);
  }

  @override
  String toString() {
    return 'ResponseGetAllStoriesModel(error: $error, message: $message, listStory: $listStory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseGetAllStoriesModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._listStory, _listStory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(_listStory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseGetAllStoriesModelCopyWith<_$_ResponseGetAllStoriesModel>
      get copyWith => __$$_ResponseGetAllStoriesModelCopyWithImpl<
          _$_ResponseGetAllStoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseGetAllStoriesModelToJson(
      this,
    );
  }
}

abstract class _ResponseGetAllStoriesModel
    implements ResponseGetAllStoriesModel {
  const factory _ResponseGetAllStoriesModel(
          {required final bool error,
          required final String message,
          required final List<ListStory> listStory}) =
      _$_ResponseGetAllStoriesModel;

  factory _ResponseGetAllStoriesModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseGetAllStoriesModel.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  List<ListStory> get listStory;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseGetAllStoriesModelCopyWith<_$_ResponseGetAllStoriesModel>
      get copyWith => throw _privateConstructorUsedError;
}

ListStory _$ListStoryFromJson(Map<String, dynamic> json) {
  return _ListStory.fromJson(json);
}

/// @nodoc
mixin _$ListStory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListStoryCopyWith<ListStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStoryCopyWith<$Res> {
  factory $ListStoryCopyWith(ListStory value, $Res Function(ListStory) then) =
      _$ListStoryCopyWithImpl<$Res, ListStory>;
  @useResult
  $Res call({String id, String name, String description, String photoUrl});
}

/// @nodoc
class _$ListStoryCopyWithImpl<$Res, $Val extends ListStory>
    implements $ListStoryCopyWith<$Res> {
  _$ListStoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photoUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListStoryCopyWith<$Res> implements $ListStoryCopyWith<$Res> {
  factory _$$_ListStoryCopyWith(
          _$_ListStory value, $Res Function(_$_ListStory) then) =
      __$$_ListStoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String description, String photoUrl});
}

/// @nodoc
class __$$_ListStoryCopyWithImpl<$Res>
    extends _$ListStoryCopyWithImpl<$Res, _$_ListStory>
    implements _$$_ListStoryCopyWith<$Res> {
  __$$_ListStoryCopyWithImpl(
      _$_ListStory _value, $Res Function(_$_ListStory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photoUrl = null,
  }) {
    return _then(_$_ListStory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListStory implements _ListStory {
  const _$_ListStory(
      {required this.id,
      required this.name,
      required this.description,
      required this.photoUrl});

  factory _$_ListStory.fromJson(Map<String, dynamic> json) =>
      _$$_ListStoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'ListStory(id: $id, name: $name, description: $description, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListStory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListStoryCopyWith<_$_ListStory> get copyWith =>
      __$$_ListStoryCopyWithImpl<_$_ListStory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListStoryToJson(
      this,
    );
  }
}

abstract class _ListStory implements ListStory {
  const factory _ListStory(
      {required final String id,
      required final String name,
      required final String description,
      required final String photoUrl}) = _$_ListStory;

  factory _ListStory.fromJson(Map<String, dynamic> json) =
      _$_ListStory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ListStoryCopyWith<_$_ListStory> get copyWith =>
      throw _privateConstructorUsedError;
}
