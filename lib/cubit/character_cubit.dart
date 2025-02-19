import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/harry_potter_api.dart';
import '../storage/shared_prefs_storage.dart';
import 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final HarryPotterApi api;
  final SharedPrefsStorage storage;

  CharacterCubit({required this.api, required this.storage})
      : super(const CharacterState.loading());

  Future<void> fetchCharacters() async {
    try {
      final cachedCharacters = await storage.getCharacters();
      if (cachedCharacters.isNotEmpty) {
        emit(CharacterState.loaded(cachedCharacters));
        return;
      }

      final apiCharacters = await api.getCharacters();
      emit(CharacterState.loaded(apiCharacters));
      await storage.saveCharacters(apiCharacters);
    } catch (e) {
      emit(const CharacterState.error("Нет интернета и данных нет в памяти"));
    }
  }

  Future<void> deleteCharacter(String name) async {
    state.whenOrNull(
      loaded: (characters) async {
        final updatedList = characters.where((character) =>
        character.name != name).toList();

        emit(CharacterState.loaded(updatedList));
        await storage.saveCharacters(updatedList);
      },
    );
  }
}