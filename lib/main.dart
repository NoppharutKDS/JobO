import 'package:JobO/pages/tip1.dart';
import 'package:JobO/pages/verify.dart';
import 'package:flutter/material.dart';
import 'pages/welcome.dart';

void main() {
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
      home: WelcomePage(),
    );
  }
}
