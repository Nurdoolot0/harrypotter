import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/character_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Harry Potter Characters'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (characters) => ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: characters.length,
              itemBuilder: (context, index) {
                final character = characters[index];
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            character.image?.isNotEmpty == true
                                ? character.image!
                                : 'https://via.placeholder.com/100',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error, size: 80, color: Colors.red),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                character.name ?? 'Unknown',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (character.house?.isNotEmpty == true)
                                Text(
                                  'House: ${character.house}',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              if (character.dateOfBirth?.isNotEmpty == true)
                                Text('Born: ${character.dateOfBirth}'),
                              if (character.actor?.isNotEmpty == true)
                                Text('Played by: ${character.actor}'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            error: (message) => Center(
                child: Text(message, style: const TextStyle(color: Colors.red))),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () => context.read<CharacterCubit>().fetchCharacters(),
        child: const Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }
}
