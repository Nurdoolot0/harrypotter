import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/character_model.dart';

class SharedPrefsStorage {
  static const String _charactersKey = 'characters';

  Future<void> saveCharacters(List<CharacterModel> characters) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String jsonString = jsonEncode(characters.map((c) => c.toJson()).toList());
      await prefs.setString(_charactersKey, jsonString);
    } catch (e) {
      print("Ошибка сохранения в SharedPreferences: $e");
    }
  }

  Future<List<CharacterModel>> getCharacters() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? jsonString = prefs.getString(_charactersKey);

      if (jsonString == null) return [];

      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((json) => CharacterModel.fromJson(json)).toList();
    } catch (e) {
      print("Ошибка загрузки из SharedPreferences: $e");
      return [];
    }
  }

  Future<void> deleteCharacter(String name) async {
    try {
      final characters = await getCharacters();
      final updatedList = characters.where((c) => c.name != name).toList();
      await saveCharacters(updatedList);
    } catch (e) {
      print("Ошибка удаления из SharedPreferences: $e");
    }
  }
}