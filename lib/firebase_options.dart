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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA9Potgfx7E1r3tMzjyZLxo6WVlZTqLFss',
    appId: '1:559996447813:web:241ec8affc9be88a53872c',
    messagingSenderId: '559996447813',
    projectId: 'motor-mingle-auth',
    authDomain: 'motor-mingle-auth.firebaseapp.com',
    storageBucket: 'motor-mingle-auth.appspot.com',
    measurementId: 'G-47CPVLTGW5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsSufWbG3PSr6hjjFJRo-goFrz-sh_oyM',
    appId: '1:559996447813:android:f5f14a4d8268b65653872c',
    messagingSenderId: '559996447813',
    projectId: 'motor-mingle-auth',
    storageBucket: 'motor-mingle-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqTV1G40QBrL60iNE33esGpbtsfruMD-0',
    appId: '1:559996447813:ios:aabdd5f93e1dbe3653872c',
    messagingSenderId: '559996447813',
    projectId: 'motor-mingle-auth',
    storageBucket: 'motor-mingle-auth.appspot.com',
    iosClientId:
        '559996447813-kmfe07nfs0q9ahge7nbhoknaun3hg77s.apps.googleusercontent.com',
    iosBundleId: 'fr.motormingle.front',
  );
}