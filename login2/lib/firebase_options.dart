// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCXbdCfwvsn0_GOO1a4IOJO7jCmc8MY94U',
    appId: '1:691001698162:web:8f12cee114c580936ddfeb',
    messagingSenderId: '691001698162',
    projectId: 'aplicacionesmoviles-8150b',
    authDomain: 'aplicacionesmoviles-8150b.firebaseapp.com',
    storageBucket: 'aplicacionesmoviles-8150b.firebasestorage.app',
    measurementId: 'G-1ESM38RJ4B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmWqiLRCaYSTsrTgFtEarkmrOnuafM3vc',
    appId: '1:691001698162:android:c32cc543155a75366ddfeb',
    messagingSenderId: '691001698162',
    projectId: 'aplicacionesmoviles-8150b',
    storageBucket: 'aplicacionesmoviles-8150b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsAQKiquD_tUPdnLXx1DwuPJ2eBo9SqKI',
    appId: '1:691001698162:ios:1f513fdcfef5af0d6ddfeb',
    messagingSenderId: '691001698162',
    projectId: 'aplicacionesmoviles-8150b',
    storageBucket: 'aplicacionesmoviles-8150b.firebasestorage.app',
    iosBundleId: 'com.example.login2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsAQKiquD_tUPdnLXx1DwuPJ2eBo9SqKI',
    appId: '1:691001698162:ios:1f513fdcfef5af0d6ddfeb',
    messagingSenderId: '691001698162',
    projectId: 'aplicacionesmoviles-8150b',
    storageBucket: 'aplicacionesmoviles-8150b.firebasestorage.app',
    iosBundleId: 'com.example.login2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCXbdCfwvsn0_GOO1a4IOJO7jCmc8MY94U',
    appId: '1:691001698162:web:9e5cfc1d9c82165d6ddfeb',
    messagingSenderId: '691001698162',
    projectId: 'aplicacionesmoviles-8150b',
    authDomain: 'aplicacionesmoviles-8150b.firebaseapp.com',
    storageBucket: 'aplicacionesmoviles-8150b.firebasestorage.app',
    measurementId: 'G-F1LVNPQLMV',
  );
}
