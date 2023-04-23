import 'dart:ui';

import 'package:JobO/pages/login.dart';
import 'package:JobO/pages/phone.dart';
import 'package:flutter/material.dart';
import 'package:JobO/components/my_button.dart';
import 'package:JobO/components/my_textfield.dart';
import 'package:JobO/components/square_tile.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  
  @override
  _Signup createState() => _Signup();  
}  

class _Signup extends State<Signup> {  
  bool isChecked = false;  
 
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassController = TextEditingController();

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
                  const SizedBox(height: 30),
                  const Text("Create an account",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontFamily: "Karla",
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ClipRect(
                    child: BackdropFilter(
                      filter:
                          ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(_opacity),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Form(
                          key: _formKey,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                    "Email",
                                    style: TextStyle(
                                        color: Color(0xFF2B2B2B), fontSize: 20, fontFamily: 'Karla', fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start),
                                const SizedBox(height: 10),
                                MyTextField(
                                  controller: usernameController,
                                  hintText: 'Email',
                                  obscureText: false,

                                ),
                                const SizedBox(height: 30),
                                const Text(
                                    "Password",
                                    style: TextStyle(
                                        color: Color(0xFF2B2B2B), fontSize: 20, fontFamily: 'Karla', fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start),

                                const SizedBox(height: 10),
                                MyPasswordTextField(
                                  controller: passwordController,
                                  hintText: 'Password',
                                  obscureText: true,
                                ),
                                const SizedBox(height: 30),
                                const Text(
                                    "Confirm Password",
                                    style: TextStyle(
                                        color: Color(0xFF2B2B2B), fontSize: 20, fontFamily: 'Karla', fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start),

                                const SizedBox(height: 10),
                                MyConfirmPasswordTextField(
                                  controller: confirmpassController,
                                  hintText: 'Confirm Password',
                                  obscureText: true,
                                ),

                                const SizedBox(height: 20),

                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    CheckboxListTile(
                                      title: const Text("I have read and agree to"),
                                      subtitle: const Text('Term of Service and Privacy Policy'),
                                      checkColor: Color.fromARGB(255, 255, 255, 255),
                                      activeColor: Color(0xFF03764D),
                                      value: isChecked,
                                      onChanged: (newBool) {setState(() {isChecked = newBool!;});},
                                      controlAffinity: ListTileControlAffinity.leading,
                                      ),
                                    const SizedBox(height: 30),
                                MyButton(
                                  text: "Continue",
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