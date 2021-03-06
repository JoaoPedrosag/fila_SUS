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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUyod5ZHDyOYwX5Bo7TzNypaBm50BUM_4',
    appId: '1:301219800358:android:d4c23a69910ab6def4cde7',
    messagingSenderId: '301219800358',
    projectId: 'filaatendimento-8def9',
    storageBucket: 'filaatendimento-8def9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjw8McnwGXTFjYHSy8eW0J5p2uAhrtQWI',
    appId: '1:301219800358:ios:dbeb042075fba6daf4cde7',
    messagingSenderId: '301219800358',
    projectId: 'filaatendimento-8def9',
    storageBucket: 'filaatendimento-8def9.appspot.com',
    iosClientId: '301219800358-jtor12ut44qrjhhsemsm2p81lokdj3mi.apps.googleusercontent.com',
    iosBundleId: 'yes',
  );
}
