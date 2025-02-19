import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/character_cubit.dart';
import '../cubit/character_state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Harry Potter Characters")),
      body: BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
          return state.when(
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (characters) => ListView.builder(
              itemCount: characters.length,
              itemBuilder: (context, index) {
                final character = characters[index];
                return ListTile(
                  title: Text(character.name),
                  subtitle: Text(character.house ?? "Unknown House"),
                  leading: Image.network(character.image, width: 50, height: 50),
                  onLongPress: () => _showDeleteDialog(context, character.name),
                );
              },
            ),
            error: (message) => Center(child: Text("Ошибка: $message")),
          );
        },
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, String name) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Удалить персонажа?"),
        content: Text("Вы действительно хотите удалить $name?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Отмена"),
          ),
          TextButton(
            onPressed: () {
              context.read<CharacterCubit>().deleteCharacter(name);
              Navigator.pop(context);
            },
            child: Text("Да"),
          ),
        ],
      ),
    );
  }
}