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
    apiKey: 'AIzaSyDK9Q0hmvCQT6SbxU1vq5D_IsZbRsGFWYk',
    appId: '1:295886256518:web:cfeb69471706cbe9d71407',
    messagingSenderId: '295886256518',
    projectId: 'crudapp-4ec7f',
    authDomain: 'crudapp-4ec7f.firebaseapp.com',
    storageBucket: 'crudapp-4ec7f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOVdq0iSS7_xtdNrIuVE_qlxdI_TFitoE',
    appId: '1:295886256518:android:7554a6d54116a890d71407',
    messagingSenderId: '295886256518',
    projectId: 'crudapp-4ec7f',
    storageBucket: 'crudapp-4ec7f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9HALihk5T4NZVgB9FgVxOhbp2gWCZ-68',
    appId: '1:295886256518:ios:bb9b14eb8fae048dd71407',
    messagingSenderId: '295886256518',
    projectId: 'crudapp-4ec7f',
    storageBucket: 'crudapp-4ec7f.appspot.com',
    iosClientId: '295886256518-c87gk3jpt1b6vfu2u40tkl00deamj52c.apps.googleusercontent.com',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9HALihk5T4NZVgB9FgVxOhbp2gWCZ-68',
    appId: '1:295886256518:ios:bb9b14eb8fae048dd71407',
    messagingSenderId: '295886256518',
    projectId: 'crudapp-4ec7f',
    storageBucket: 'crudapp-4ec7f.appspot.com',
    iosClientId: '295886256518-c87gk3jpt1b6vfu2u40tkl00deamj52c.apps.googleusercontent.com',
    iosBundleId: 'com.example.crudApp',
  );
}