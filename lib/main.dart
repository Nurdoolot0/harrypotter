import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harrypotter/screens/home_screen.dart';
import 'cubit/character_cubit.dart';
import 'data/harry_potter_api.dart';
import 'storage/shared_prefs_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPrefsStorage = SharedPrefsStorage();

  runApp(MyApp(storage: sharedPrefsStorage));
}

class MyApp extends StatelessWidget {
  final SharedPrefsStorage storage;

  const MyApp({Key? key, required this.storage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterCubit(
        api: HarryPotterApi(),
        storage: storage,
      )..fetchCharacters(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}