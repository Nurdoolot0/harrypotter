import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CharactersScreen extends StatefulWidget {
  @override
  _CharactersScreenState createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final Dio _dio = Dio();
  late Future<List<dynamic>> _charactersFuture;

  @override
  void initState() {
    super.initState();
    _charactersFuture = fetchCharacters();
  }

  Future<List<dynamic>> fetchCharacters() async {
    try {
      final response = await _dio.get('https://potterapi-fedeperin.vercel.app/en/characters');
      return response.data;
    } catch (e) {
      throw Exception('Ошибка загрузки данных: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Гарри Поттер")),
      body: FutureBuilder<List<dynamic>>(
        future: _charactersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Ошибка загрузки данных"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Нет данных"));
          }

          final characters = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            padding: EdgeInsets.all(10),
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];
              final String imageUrl = character['image'] ?? '';

              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error, size: 50),
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
