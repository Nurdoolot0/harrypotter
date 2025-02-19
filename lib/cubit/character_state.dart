import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/character_model.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = _Loading;
  const factory CharacterState.loaded(List<CharacterModel> characters) = _Loaded;
  const factory CharacterState.error(String message) = _Error;
}