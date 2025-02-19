import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  factory CharacterModel({
    @JsonKey(name: "fullName") required String name,
    @JsonKey(name: "hogwartsHouse") String? house,
    @JsonKey(name: "birthdate") String? dateOfBirth,
    @JsonKey(name: "interpretedBy") String? actor,
    @JsonKey(name: "image") required String image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}