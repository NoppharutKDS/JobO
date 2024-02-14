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
    apiKey: 'AIzaSyBrewO5dWIWWLQbS_tLdPkdScZSdnHCgvE',
    appId: '1:151607310397:web:9860a2ab152cb840fe5254',
    messagingSenderId: '151607310397',
    projectId: 'jobo-526e3',
    authDomain: 'jobo-526e3.firebaseapp.com',
    databaseURL: 'https://jobo-526e3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jobo-526e3.appspot.com',
    measurementId: 'G-D6T1J7KB2K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9MaJ1JsDgCUUysBSyOKqNd-KYmbckoWs',
    appId: '1:151607310397:android:8befb083f9a5fd5dfe5254',
    messagingSenderId: '151607310397',
    projectId: 'jobo-526e3',
    databaseURL: 'https://jobo-526e3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jobo-526e3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUId_hMwZ8u6zug3fdK73xUrwwKR7OyUA',
    appId: '1:151607310397:ios:2ddda473c607fcfdfe5254',
    messagingSenderId: '151607310397',
    projectId: 'jobo-526e3',
    databaseURL: 'https://jobo-526e3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jobo-526e3.appspot.com',
    iosClientId: '151607310397-eq7fe75i1a5hesu4v8k4rs5bbpv1d23v.apps.googleusercontent.com',
    iosBundleId: 'com.example.main',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUId_hMwZ8u6zug3fdK73xUrwwKR7OyUA',
    appId: '1:151607310397:ios:2ddda473c607fcfdfe5254',
    messagingSenderId: '151607310397',
    projectId: 'jobo-526e3',
    databaseURL: 'https://jobo-526e3-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jobo-526e3.appspot.com',
    iosClientId: '151607310397-eq7fe75i1a5hesu4v8k4rs5bbpv1d23v.apps.googleusercontent.com',
    iosBundleId: 'com.example.main',
  );
}