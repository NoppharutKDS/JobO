import 'dart:ui';
import 'package:JobO/components/my_button.dart';
import 'package:JobO/pages/welcome.dart';
import 'package:flutter/material.dart';

class TipPage extends StatefulWidget {
  const TipPage({super.key});

  @override
  _TipPage createState() => _TipPage();  
}
class _TipPage extends State<TipPage> {
    double _sigmaX = 5; // from 0-10
  double _sigmaY = 5; // from 0-10
  double _opacity = 0.2;
  double _width = 350;
  double _height = 300;
  final _formKey = GlobalKey<FormState>();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://i.pinimg.com/originals/84/2a/d6/842ad68b315b0f586c30b465221da609.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Image.asset('assets/images/JobO_icon.png', width: 250, height: 200),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text("Let’s us help you find \n your dream job", style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 24,
                          fontFamily: "Karla",
                          fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                          Text("Tell us your style or something \n you interested", style: TextStyle(
                                  color: Color(0xFF575756),
                                  fontFamily: "Karla",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,),
                                  ])]))));}}