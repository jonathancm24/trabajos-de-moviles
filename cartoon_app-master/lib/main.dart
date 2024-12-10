import 'package:flutter/material.dart';
import 'package:cartoon_app/model/characters_data.dart';
import 'package:cartoon_app/widgets/character_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Cambiamos los colores principales
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A1B9A), // Morado más vibrante
          primary: const Color(0xFF6A1B9A),
          secondary: const Color(0xFFFF4081),
          background: const Color(0xFFF3E5F5), // Fondo lavanda claro
        ),
        useMaterial3: true,
        // Personalizamos el AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6A1B9A),
          foregroundColor: Colors.white,
          elevation: 8,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5), // Fondo lavanda claro
      appBar: AppBar(
        title: const Text(
          'Cartoooooonery',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: characters.map((character) {
          return CharacterWidget(character: character);
        }).toList(),
      ),
    );
  }
}


