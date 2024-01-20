import 'dart:ui';
import 'package:JobO/components/my_button.dart';
import 'package:JobO/pages/tip1.dart';
import 'package:JobO/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  _VerifyPage createState() => _VerifyPage();  
}
class _VerifyPage extends State<VerifyPage> {

  // text editing controllers
  final otpController = TextEditingController();
  

  double _sigmaX = 5; // from 0-10
  double _sigmaY = 5; // from 0-10
  double _opacity = 0.2;
  double _width = 350;
  double _height = 300;
  final _formKey = GlobalKey<FormState>();

    void signUserIn() {
    if (_formKey.currentState!.validate()) {
      print('valid');
    } else {
      print('not valid');
    }
  }
  @override
  Widget build(BuildContext context) => Scaffold(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Color.fromARGB(255, 0, 0, 0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
               
                  const Text("OTP Verification",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontFamily: "Karla",
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  ClipRect(
                    child: BackdropFilter(
                      filter:
                          ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1)
                                .withOpacity(_opacity),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Form(
                          key: _formKey,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("4:52",style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontFamily: "Karla",
                          fontWeight: FontWeight.w600)),
                                Text("Enter the OTP sent to",style: TextStyle(
                                  color: Color(0xFF575756),
                                  fontFamily: "Karla",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                                Pinput(length: 4,),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Text('Don\'t receive the OTP?', 
                                style: TextStyle(
                                  color: Color(0xFF575756),
                                  fontFamily: "Karla",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,),
                                  const SizedBox(width: 4),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => WelcomePage()),
                                      );
                                            },
                                          child: Text('Resend OTP',
                                            style: TextStyle(
                                                color: Color(0xFF03764D),
                                                fontFamily: "Karla",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16))),]),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                                MyButton(
                                  text: "Verify",
                                  onTap: (() {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TipPage()),
                                      );
                                    } else {
                                      print('not valid');
                                    }
                                  }),
                                ),
                              ],
                            ),
                        ),
                      ),
                    ),
                  ),
                  )
                ],
              )
            ],
        ),
      ),
      )
    );
  }