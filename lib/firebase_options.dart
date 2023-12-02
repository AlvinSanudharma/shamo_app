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
    apiKey: 'AIzaSyDOwq3Oh8EBZ6bu2xwXhgGooWbbA3PHQ_E',
    appId: '1:874588118226:web:50bc919d57119994c9e10b',
    messagingSenderId: '874588118226',
    projectId: 'shamo-cfd7d',
    authDomain: 'shamo-cfd7d.firebaseapp.com',
    storageBucket: 'shamo-cfd7d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC50tiqUWwOpL5qVulQGPAy0llBimlboB8',
    appId: '1:874588118226:android:91c79047f3d94594c9e10b',
    messagingSenderId: '874588118226',
    projectId: 'shamo-cfd7d',
    storageBucket: 'shamo-cfd7d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDsGlExt1yp-mmz86JxEzYy5GEnmsUSL-E',
    appId: '1:874588118226:ios:6d909ee43ede7d44c9e10b',
    messagingSenderId: '874588118226',
    projectId: 'shamo-cfd7d',
    storageBucket: 'shamo-cfd7d.appspot.com',
    iosBundleId: 'com.example.shamoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDsGlExt1yp-mmz86JxEzYy5GEnmsUSL-E',
    appId: '1:874588118226:ios:00e499769c2fd0f2c9e10b',
    messagingSenderId: '874588118226',
    projectId: 'shamo-cfd7d',
    storageBucket: 'shamo-cfd7d.appspot.com',
    iosBundleId: 'com.example.shamoApp.RunnerTests',
  );
}
