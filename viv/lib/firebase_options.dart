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
    apiKey: 'AIzaSyDA_deT-HJJAm2A9vxiDS_kYuM-WZqs9F0',
    appId: '1:435084911218:web:7c1d3980578357ba8798eb',
    messagingSenderId: '435084911218',
    projectId: 'viv1-7194f',
    authDomain: 'viv1-7194f.firebaseapp.com',
    storageBucket: 'viv1-7194f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyp6TZDv8gpzYqtzviqXaCXdRseNOOv2c',
    appId: '1:435084911218:android:07905b2069cfba458798eb',
    messagingSenderId: '435084911218',
    projectId: 'viv1-7194f',
    storageBucket: 'viv1-7194f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlW9di50Ru5-v7jXf5nhcqrWj8ZCTs1zY',
    appId: '1:435084911218:ios:58bfa1e1f6d2413e8798eb',
    messagingSenderId: '435084911218',
    projectId: 'viv1-7194f',
    storageBucket: 'viv1-7194f.appspot.com',
    iosBundleId: 'com.example.viv',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBlW9di50Ru5-v7jXf5nhcqrWj8ZCTs1zY',
    appId: '1:435084911218:ios:58bfa1e1f6d2413e8798eb',
    messagingSenderId: '435084911218',
    projectId: 'viv1-7194f',
    storageBucket: 'viv1-7194f.appspot.com',
    iosBundleId: 'com.example.viv',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDA_deT-HJJAm2A9vxiDS_kYuM-WZqs9F0',
    appId: '1:435084911218:web:397b6df6351d3cfb8798eb',
    messagingSenderId: '435084911218',
    projectId: 'viv1-7194f',
    authDomain: 'viv1-7194f.firebaseapp.com',
    storageBucket: 'viv1-7194f.appspot.com',
  );
}
