import 'dart:ui';
import 'package:JobO/components/my_button.dart';
import 'package:JobO/components/my_textfield.dart';
import 'package:JobO/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  _PhonePage createState() => _PhonePage();  
}
class _PhonePage extends State<PhonePage> {

  // text editing controllers
  final phoneController = TextEditingController();

  double _sigmaX = 5; // from 0-10
  double _sigmaY = 5; // from 0-10
  double _opacity = 0.2;
  double _width = 350;
  double _height = 300;
  final _formKey = GlobalKey<FormState>();

  // sign user in method
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
                  const Text("Phone Verification",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontFamily: "Karla",
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07),
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
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Form(
                          key: _formKey,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/verification.png', width: 250, height: 200),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                const Text('Please enter your valid phone number. We will send you a 4-digit code to verify your account.',
                                    style: TextStyle(
                                    color: Color(0xFF575756),
                                    fontFamily: "Karla",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                          ),
                                const SizedBox(height: 30),
                                IntlPhoneField(
                                      decoration: const InputDecoration(
                                      labelText: 'Phone Number',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color.fromRGBO(130, 130, 128, 0.3)),
                                        
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(189, 189, 189, 1)),
                                    ),
                                    fillColor: Color(0xFFF9FAFB),
                                    filled: true,
                                    ),
                                    initialCountryCode: 'TH',
                                    ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                                MyButton(
                                  text: "Get OTP",
                                  onTap: (() {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PhonePage()),
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }