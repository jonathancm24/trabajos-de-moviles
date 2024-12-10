import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      if (user != null) {
        // Guarda el registro en Firestore.
        await FirebaseFirestore.instance.collection('user_logins').add({
          'email': user.email,
          'userId': user.uid,
          'timestamp': FieldValue.serverTimestamp(),
        });
      }

      print('Inicio de sesión exitoso');
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Error: Usuario no encontrado');
        throw Exception('Usuario no encontrado.');
      } else if (e.code == 'wrong-password') {
        print('Error: Contraseña incorrecta');
        throw Exception('Contraseña incorrecta.');
      } else {
        print('Error de Firebase: $e');
        throw Exception('Error de Firebase.');
      }
    } catch (e) {
      print('Error inesperado: $e');
      throw Exception('Error inesperado: $e');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
    print('Usuario desconectado');
  }
}

