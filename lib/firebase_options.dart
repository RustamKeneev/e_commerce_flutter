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
    apiKey: 'AIzaSyAqjD9g8QrD4Ww9gT9Ue1iUsO9zuTTW8IE',
    appId: '1:489215032050:web:3ed8713f1e2d34147dae6b',
    messagingSenderId: '489215032050',
    projectId: 'ecommerceflutter-a0cf3',
    authDomain: 'ecommerceflutter-a0cf3.firebaseapp.com',
    storageBucket: 'ecommerceflutter-a0cf3.appspot.com',
    measurementId: 'G-HL96XHMM6H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_BXB7JK1eGBShdN_ePq5CkBz2N1dLrlg',
    appId: '1:489215032050:android:fd2dfe9c51df24d07dae6b',
    messagingSenderId: '489215032050',
    projectId: 'ecommerceflutter-a0cf3',
    storageBucket: 'ecommerceflutter-a0cf3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPoX3UAUxwvMiq0tztv3x93F4YrlwY5wg',
    appId: '1:489215032050:ios:8b7332feb29c61f97dae6b',
    messagingSenderId: '489215032050',
    projectId: 'ecommerceflutter-a0cf3',
    storageBucket: 'ecommerceflutter-a0cf3.appspot.com',
    iosClientId: '489215032050-g4updbuu2pq3llpp1t9bi1ru31h927ev.apps.googleusercontent.com',
    iosBundleId: 'com.RustamKeneev.ecommerceflutter.eCommerceFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPoX3UAUxwvMiq0tztv3x93F4YrlwY5wg',
    appId: '1:489215032050:ios:8b7332feb29c61f97dae6b',
    messagingSenderId: '489215032050',
    projectId: 'ecommerceflutter-a0cf3',
    storageBucket: 'ecommerceflutter-a0cf3.appspot.com',
    iosClientId: '489215032050-g4updbuu2pq3llpp1t9bi1ru31h927ev.apps.googleusercontent.com',
    iosBundleId: 'com.RustamKeneev.ecommerceflutter.eCommerceFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAqjD9g8QrD4Ww9gT9Ue1iUsO9zuTTW8IE',
    appId: '1:489215032050:web:6a7c07e38f727a917dae6b',
    messagingSenderId: '489215032050',
    projectId: 'ecommerceflutter-a0cf3',
    authDomain: 'ecommerceflutter-a0cf3.firebaseapp.com',
    storageBucket: 'ecommerceflutter-a0cf3.appspot.com',
    measurementId: 'G-VW9FNNWH1B',
  );

}