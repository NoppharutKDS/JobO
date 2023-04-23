import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) => val!.isEmpty ? 'Invalid Email' : null,
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.perm_identity),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(130, 130, 128, 0.3)),
            borderRadius: BorderRadius.circular(50.0)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(50.0)
          ),
          fillColor: Color(0xFFF9FAFB),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20 , fontFamily: 'Karla', fontWeight: FontWeight.w500, color: Colors.grey[500])),
    );
  }
}

class MyPasswordTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyPasswordTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) => val!.isEmpty ? 'Invalid Password' : null,
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.visibility_off),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(130, 130, 128, 0.3)),
            borderRadius: BorderRadius.circular(50.0)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(50.0)
          ),
          fillColor: Color(0xFFF9FAFB),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20 , fontFamily: 'Karla', fontWeight: FontWeight.w500, color: Colors.grey[500])),
    );
  }
}

class MyConfirmPasswordTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyConfirmPasswordTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) => val!.isEmpty ? 'Invalid Password' : null,
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.visibility_off),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(130, 130, 128, 0.3)),
            borderRadius: BorderRadius.circular(50.0)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(189, 189, 189, 1)),
            borderRadius: BorderRadius.circular(50.0)
          ),
          fillColor: Color(0xFFF9FAFB),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20 , fontFamily: 'Karla', fontWeight: FontWeight.w500, color: Colors.grey[500])),
    );
  }
}
