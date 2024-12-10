import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la etiqueta de debug
      initialRoute: '/login', // Ruta inicial
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(email: ''), // Se actualizará el email dinámicamente
      },
    );
  }
}
