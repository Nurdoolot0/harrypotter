import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import '../models/character_model.dart';
import '../data/harry_potter_api.dart';

part 'character_state.dart';
part 'character_cubit.freezed.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final Box<CharacterModel> characterBox;
  final HarryPotterApi api;

  CharacterCubit(this.characterBox, this.api)
      : super(const CharacterState.loading());

  Future<void> fetchCharacters() async {
    try {
      final Box<CharacterModel> box = await Hive.openBox<CharacterModel>(
          'charactersBox');

      if (box.isNotEmpty) {
        emit(CharacterState.loaded(box.values.toList()));
        return;
      }

      final characters = await api.fetchCharacters();
      box.clear();
      box.addAll(characters);
      emit(CharacterState.loaded(characters));
    } catch (e) {
      emit(const CharacterState.error('Ошибка загрузки данных'));
    }
  }
}