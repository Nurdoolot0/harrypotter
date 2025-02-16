import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harrypotter/screens/home_screen.dart';
import 'cubit/character_cubit.dart';
import 'data/harry_potter_api.dart';
import 'storage/hive_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterCubit(HiveStorage.characterBox, HarryPotterApi())..fetchCharacters(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}