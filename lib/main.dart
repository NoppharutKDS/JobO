import 'package:JobO/pages/myprofile.dart';
import 'package:JobO/pages/tip1.dart';
import 'package:JobO/pages/tip2.dart';
import 'package:JobO/pages/verify.dart';
import 'package:flutter/material.dart';
import 'pages/welcome.dart';
import 'package:JobO/pages/myprofile.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JobO App',
      theme: ThemeData(fontFamily: 'Karla'),
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(),
    );
  }
}
