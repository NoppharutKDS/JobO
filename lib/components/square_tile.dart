import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String title;
  const SquareTile({
    super.key,
    required this.imagePath,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(130, 130, 128, 0.25)),
        borderRadius: BorderRadius.circular(25.0),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 40,
          ),
          const SizedBox(width: 20),
          Text(title,
              style: const TextStyle(color: Color(0xFF575756), fontSize: 18, fontFamily: 'Karla', fontWeight: FontWeight.w500))
              
        ],
      ),
    );
  }
}