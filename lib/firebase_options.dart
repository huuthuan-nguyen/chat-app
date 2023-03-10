// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDXkpSuh5UiMydOimXrqCdh4t89kVfpJGE',
    appId: '1:534609286937:web:ac2cf515d3ad492abfd788',
    messagingSenderId: '534609286937',
    projectId: 'chat-app-f43c1',
    authDomain: 'chat-app-f43c1.firebaseapp.com',
    storageBucket: 'chat-app-f43c1.appspot.com',
    measurementId: 'G-RVRHR6JP2Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQWVNl4pxZCy4zWhWvEwYFHuYDHhGUfTw',
    appId: '1:534609286937:android:f38c316914e49f9abfd788',
    messagingSenderId: '534609286937',
    projectId: 'chat-app-f43c1',
    storageBucket: 'chat-app-f43c1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfNQyEajlN7hYfZs-k2nBJadfe8dJwxvI',
    appId: '1:534609286937:ios:841eff20b3e217c8bfd788',
    messagingSenderId: '534609286937',
    projectId: 'chat-app-f43c1',
    storageBucket: 'chat-app-f43c1.appspot.com',
    iosClientId:
        '534609286937-me99fcjf3rt3df1pl8bfaqn1a11j32hi.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfNQyEajlN7hYfZs-k2nBJadfe8dJwxvI',
    appId: '1:534609286937:ios:841eff20b3e217c8bfd788',
    messagingSenderId: '534609286937',
    projectId: 'chat-app-f43c1',
    storageBucket: 'chat-app-f43c1.appspot.com',
    iosClientId:
        '534609286937-me99fcjf3rt3df1pl8bfaqn1a11j32hi.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
