import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final String username;
  final String password;

  const InfoScreen({
    Key? key,
    required this.username,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información de Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre de usuario: $username'),
            const SizedBox(height: 16),
            Text('Contraseña: $password'),
          ],
        ),
      ),
    );
  }
}