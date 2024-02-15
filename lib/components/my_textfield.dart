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
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.perm_identity),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(130, 130, 128, 0.3)),
              borderRadius: BorderRadius.circular(50.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(50.0)),
          fillColor: Color(0xFFF9FAFB),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 18,
              fontFamily: 'Karla',
              fontWeight: FontWeight.w500,
              color: Colors.grey[500])),
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
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.visibility_off),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(130, 130, 128, 0.3)),
              borderRadius: BorderRadius.circular(50.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(50.0)),
          fillColor: Color(0xFFF9FAFB),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 18,
              fontFamily: 'Karla',
              fontWeight: FontWeight.w500,
              color: Colors.grey[500])),
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
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.visibility_off),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(130, 130, 128, 0.3)),
              borderRadius: BorderRadius.circular(50.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(189, 189, 189, 1)),
              borderRadius: BorderRadius.circular(50.0)),
          fillColor: Color(0xFFF9FAFB),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 18,
              fontFamily: 'Karla',
              fontWeight: FontWeight.w500,
              color: Colors.grey[500])),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  final int maxLines;
  final String label;
  final String text;
  final ValueChanged<String> onChanged;
  const TextFieldWidget({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            maxLines: widget.maxLines,
          ),
        ],
      );
}
