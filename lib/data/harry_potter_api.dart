import 'package:dio/dio.dart';
import '../models/character_model.dart';

class HarryPotterApi {
  final Dio _dio = Dio();
  final String baseUrl = 'https://potterapi-fedeperin.vercel.app';

  Future<List<CharacterModel>> fetchCharacters() async {
    try {
      final response = await _dio.get('$baseUrl/en/characters');

      // 🔍 Проверяем, что приходит в ответе
      print('Response data: ${response.data}');

      if (response.statusCode == 200 && response.data is List) {
        return (response.data as List)
            .map((json) => CharacterModel.fromJson(json))
            .toList();
      } else {
        throw Exception('Ошибка: Некорректный формат данных');
      }
    } catch (e, stackTrace) {
      print('Ошибка загрузки данных: $e\n$stackTrace');
      throw Exception('Ошибка загрузки данных: $e');
    }
  }
}
