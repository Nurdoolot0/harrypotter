// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterModelImpl _$$CharacterModelImplFromJson(Map<String, dynamic> json) =>
    _$CharacterModelImpl(
      name: json['fullName'] as String,
      house: json['hogwartsHouse'] as String?,
      dateOfBirth: json['birthdate'] as String?,
      actor: json['interpretedBy'] as String?,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$CharacterModelImplToJson(
        _$CharacterModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.name,
      'hogwartsHouse': instance.house,
      'birthdate': instance.dateOfBirth,
      'interpretedBy': instance.actor,
      'image': instance.image,
    };