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
    apiKey: 'AIzaSyCZc1lVX91jDnIeGqTESYHIOP60NKMW1vg',
    appId: '1:641758301057:web:ec6448e37fda5580713680',
    messagingSenderId: '641758301057',
    projectId: 'todo-app-304c4',
    authDomain: 'todo-app-304c4.firebaseapp.com',
    storageBucket: 'todo-app-304c4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB66XfIAYeY9gax2k1I3O2CvO2WON1kXHQ',
    appId: '1:641758301057:android:2dd6e33442ee3a19713680',
    messagingSenderId: '641758301057',
    projectId: 'todo-app-304c4',
    storageBucket: 'todo-app-304c4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwW0zRB8LN13Stvg5pMhIjcYQAQDNPGI4',
    appId: '1:641758301057:ios:e9eb9c13f25276ce713680',
    messagingSenderId: '641758301057',
    projectId: 'todo-app-304c4',
    storageBucket: 'todo-app-304c4.appspot.com',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDwW0zRB8LN13Stvg5pMhIjcYQAQDNPGI4',
    appId: '1:641758301057:ios:33ae46e5a60d1877713680',
    messagingSenderId: '641758301057',
    projectId: 'todo-app-304c4',
    storageBucket: 'todo-app-304c4.appspot.com',
    iosBundleId: 'com.example.todoApp.RunnerTests',
  );
}