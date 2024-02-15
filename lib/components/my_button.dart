import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color(0xFF03764D),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class MyButtonAgree extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButtonAgree({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color(0xFF03764D),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Karla',
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class EditProfileButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const EditProfileButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Karla',
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class ViewAppicationButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const ViewAppicationButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Karla',
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class ReviewNumberButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const ReviewNumberButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 106, 208, 172),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Karla',
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class FollowNumberButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const FollowNumberButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 106, 208, 172),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Karla',
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class UpdateProfile extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const UpdateProfile({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: const Color(0xFF03764D),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Karla',
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
