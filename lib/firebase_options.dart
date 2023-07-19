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
    apiKey: 'AIzaSyBOAS14pmDX2EYc6MQKqXuzHHr1muWAATw',
    appId: '1:915254314920:web:dbd84b5fef55d964883f9d',
    messagingSenderId: '915254314920',
    projectId: 'ecommerce-8c2d3',
    authDomain: 'ecommerce-8c2d3.firebaseapp.com',
    storageBucket: 'ecommerce-8c2d3.appspot.com',
    measurementId: 'G-QXSCPE1HWQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9kQNZrGm_ct4ITyf4JU0EC5DefIQcKJY',
    appId: '1:915254314920:android:d89263ad2edfedc8883f9d',
    messagingSenderId: '915254314920',
    projectId: 'ecommerce-8c2d3',
    storageBucket: 'ecommerce-8c2d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFB1KAzWwWMRLU3hBWTJmG2-u0ti7PCH8',
    appId: '1:915254314920:ios:7811138711083e6a883f9d',
    messagingSenderId: '915254314920',
    projectId: 'ecommerce-8c2d3',
    storageBucket: 'ecommerce-8c2d3.appspot.com',
    iosClientId: '915254314920-na0jdqaqt9r3pst1aq78rmv630i5q17b.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFB1KAzWwWMRLU3hBWTJmG2-u0ti7PCH8',
    appId: '1:915254314920:ios:7811138711083e6a883f9d',
    messagingSenderId: '915254314920',
    projectId: 'ecommerce-8c2d3',
    storageBucket: 'ecommerce-8c2d3.appspot.com',
    iosClientId: '915254314920-na0jdqaqt9r3pst1aq78rmv630i5q17b.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceProject',
  );
}
