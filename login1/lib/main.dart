import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCXbdCfwvsn0_GOO1a4IOJO7jCmc8MY94U",
        authDomain: "aplicacionesmoviles-8150b.firebaseapp.com",
        projectId: "aplicacionesmoviles-8150b",
        storageBucket: "aplicacionesmoviles-8150b.firebasestorage.app",
        messagingSenderId: "691001698162",
        appId: "1:691001698162:web:a11dca2a6885ec4b6ddfeb",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App con Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
