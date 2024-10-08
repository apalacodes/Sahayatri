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
    apiKey: 'AIzaSyAcCz9PO1DV6IGyV98LZHR-13Al2QHv5_8',
    appId: '1:264387494164:web:f8edf8ff0888af988a8201',
    messagingSenderId: '264387494164',
    projectId: 'mobile-project-aaac6',
    authDomain: 'mobile-project-aaac6.firebaseapp.com',
    storageBucket: 'mobile-project-aaac6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcG7T4H70mpae8RiPKmdtsE6dyWwo9WjY',
    appId: '1:264387494164:android:7b5e8056bc59480e8a8201',
    messagingSenderId: '264387494164',
    projectId: 'mobile-project-aaac6',
    storageBucket: 'mobile-project-aaac6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsIGl1nhpmrFlQ_REqadombCdOzwE2Qo0',
    appId: '1:264387494164:ios:a0a88a056f473eaa8a8201',
    messagingSenderId: '264387494164',
    projectId: 'mobile-project-aaac6',
    storageBucket: 'mobile-project-aaac6.appspot.com',
    iosBundleId: 'com.example.sahayatriApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsIGl1nhpmrFlQ_REqadombCdOzwE2Qo0',
    appId: '1:264387494164:ios:a0a88a056f473eaa8a8201',
    messagingSenderId: '264387494164',
    projectId: 'mobile-project-aaac6',
    storageBucket: 'mobile-project-aaac6.appspot.com',
    iosBundleId: 'com.example.sahayatriApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAcCz9PO1DV6IGyV98LZHR-13Al2QHv5_8',
    appId: '1:264387494164:web:ea8f9b8a69fe91ad8a8201',
    messagingSenderId: '264387494164',
    projectId: 'mobile-project-aaac6',
    authDomain: 'mobile-project-aaac6.firebaseapp.com',
    storageBucket: 'mobile-project-aaac6.appspot.com',
  );
}
