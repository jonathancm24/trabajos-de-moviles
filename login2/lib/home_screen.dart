import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget {
  final String email;

  const HomeScreen({Key? key, required this.email}) : super(key: key);

  Future<List<Map<String, dynamic>>> _getLoginRecords() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('user_logins')
        .where('email', isEqualTo: email)
        .orderBy('timestamp', descending: true)
        .get();

    // Asegúrate de manejar el campo `timestamp` correctamente.
    return snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      if (data['timestamp'] is Timestamp) {
        data['timestamp'] = (data['timestamp'] as Timestamp).toDate(); // Convierte a DateTime
      }
      return data;
    }).toList();
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Inicio de Sesión Exitoso'),
      actions: [
        IconButton(
          onPressed: () async {
            await AuthService().signOut();
            // Navega a la pantalla de login.
            Navigator.pushReplacementNamed(context, '/login');
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    ),
    body: FutureBuilder<List<Map<String, dynamic>>>( 
      future: _getLoginRecords(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No hay registros de inicio de sesión.'));
        }

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),  // Ajusta el padding según tu preferencia
              child: Text(
                'Registro de Inicios de Sesión', 
                style: Theme.of(context).textTheme.headlineSmall,
                // Estilo del título
              ),
            ),
            Expanded(
              child: ListView(
                children: snapshot.data!.map((record) {
                  return ListTile(
                    title: Text('Fecha: ${record['timestamp']}'),
                    subtitle: Text('Email: ${record['email']}'),
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    ),
  );
}
}
