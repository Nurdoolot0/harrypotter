import 'package:hive_flutter/hive_flutter.dart';
import '../models/character_model.dart';

class HiveStorage {
  static late Box<CharacterModel> characterBox;

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CharacterModelAdapter());

    characterBox = await Hive.openBox<CharacterModel>('charactersBox');
  }

  static Future<void> close() async {
    await Hive.close();
  }
}