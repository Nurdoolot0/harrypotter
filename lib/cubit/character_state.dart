part of 'character_cubit.dart';


@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = _Loading;
  const factory CharacterState.loaded(List<CharacterModel> characters) = _Loaded;
  const factory CharacterState.error(String message) = _Error;
}