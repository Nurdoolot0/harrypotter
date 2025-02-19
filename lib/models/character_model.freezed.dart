// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterModel {
  @JsonKey(name: "fullName")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "hogwartsHouse")
  String? get house => throw _privateConstructorUsedError;
  @JsonKey(name: "birthdate")
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "interpretedBy")
  String? get actor => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;

  /// Serializes this CharacterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res, CharacterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "fullName") String name,
      @JsonKey(name: "hogwartsHouse") String? house,
      @JsonKey(name: "birthdate") String? dateOfBirth,
      @JsonKey(name: "interpretedBy") String? actor,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res, $Val extends CharacterModel>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? actor = freezed,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterModelImplCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$$CharacterModelImplCopyWith(_$CharacterModelImpl value,
          $Res Function(_$CharacterModelImpl) then) =
      __$$CharacterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fullName") String name,
      @JsonKey(name: "hogwartsHouse") String? house,
      @JsonKey(name: "birthdate") String? dateOfBirth,
      @JsonKey(name: "interpretedBy") String? actor,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class __$$CharacterModelImplCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res, _$CharacterModelImpl>
    implements _$$CharacterModelImplCopyWith<$Res> {
  __$$CharacterModelImplCopyWithImpl(
      _$CharacterModelImpl _value, $Res Function(_$CharacterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? actor = freezed,
    Object? image = null,
  }) {
    return _then(_$CharacterModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterModelImpl implements _CharacterModel {
  _$CharacterModelImpl(
      {@JsonKey(name: "fullName") required this.name,
      @JsonKey(name: "hogwartsHouse") this.house,
      @JsonKey(name: "birthdate") this.dateOfBirth,
      @JsonKey(name: "interpretedBy") this.actor,
      @JsonKey(name: "image") required this.image});

  factory _$CharacterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterModelImplFromJson(json);

  @override
  @JsonKey(name: "fullName")
  final String name;
  @override
  @JsonKey(name: "hogwartsHouse")
  final String? house;
  @override
  @JsonKey(name: "birthdate")
  final String? dateOfBirth;
  @override
  @JsonKey(name: "interpretedBy")
  final String? actor;
  @override
  @JsonKey(name: "image")
  final String image;

  @override
  String toString() {
    return 'CharacterModel(name: $name, house: $house, dateOfBirth: $dateOfBirth, actor: $actor, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, house, dateOfBirth, actor, image);

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      __$$CharacterModelImplCopyWithImpl<_$CharacterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterModel implements CharacterModel {
  factory _CharacterModel(
          {@JsonKey(name: "fullName") required final String name,
          @JsonKey(name: "hogwartsHouse") final String? house,
          @JsonKey(name: "birthdate") final String? dateOfBirth,
          @JsonKey(name: "interpretedBy") final String? actor,
          @JsonKey(name: "image") required final String image}) =
      _$CharacterModelImpl;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$CharacterModelImpl.fromJson;

  @override
  @JsonKey(name: "fullName")
  String get name;
  @override
  @JsonKey(name: "hogwartsHouse")
  String? get house;
  @override
  @JsonKey(name: "birthdate")
  String? get dateOfBirth;
  @override
  @JsonKey(name: "interpretedBy")
  String? get actor;
  @override
  @JsonKey(name: "image")
  String get image;

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
