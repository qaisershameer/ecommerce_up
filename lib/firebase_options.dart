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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB26cWzf7SFHLP2WsXdAIMAysyJ7UGa0CYQ',
    appId: '1:356421881906:android:31b0061fb6277f95b66c2b',
    messagingSenderId: '356421881906',
    projectId: 'ecom1-c941c',
    storageBucket: 'ecom1-c941c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGJ_qiPxk5RZDvqLQKe8dgUizMPiMeHOkRD',
    appId: '1:356421881906:ios:a6da6a33f3cb7bfcb66c2b',
    messagingSenderId: '356421881906',
    projectId: 'ecom1-c941c',
    storageBucket: 'ecom1-c941c.firebasestorage.app',
    androidClientId: '356421881906-dk8kkgfpid8kcj5gt7v8u4toagd7a64a.apps.googleusercontent.com',
    iosClientId: '356421881906-8k12vtj2qj9lplumnkl2f6had7r04770.apps.googleusercontent.com',
    iosBundleId: 'com.qrdpro.ecom1',
  );

}
