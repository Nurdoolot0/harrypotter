import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
@HiveType(typeId: 0) // Указываем уникальный идентификатор типа
class CharacterModel with _$CharacterModel {
  factory CharacterModel({
    @HiveField(0) @JsonKey(name: "fullName") required String name,
    @HiveField(1) @JsonKey(name: "hogwartsHouse") String? house,
    @HiveField(2) @JsonKey(name: "birthdate") String? dateOfBirth,
    @HiveField(3) @JsonKey(name: "interpretedBy") String? actor,
    @HiveField(4) @JsonKey(name: "image") required String image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) => _$CharacterModelFromJson(json);
}
