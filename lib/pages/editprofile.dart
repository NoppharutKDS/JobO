import 'package:flutter/material.dart';
import 'package:JobO/models/user.dart';
import 'package:JobO/components/edit_profile_widget.dart';
import 'package:JobO/pages/myprofile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:JobO/components/my_textfield.dart';
import 'package:JobO/components/my_button.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40, // Adjust top padding as needed
                  left: 20, // Adjust left padding as needed
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                      onPressed: () {
                        // Back to myporifle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyProfilePage()),
                        );
                      },
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: const Color(0xFF03764D),
                        fontSize: 30,
                        fontFamily: "Karla",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              EditProfileWidget(
                imagePath:
                    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
                isEdit: true,
                onClicked: () async {},
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextFieldWidget(
                label: 'Username',
                text: 'Siraphop Maeprasart',
                onChanged: (username) {},
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextFieldWidget(
                label: 'About me',
                text: 'My name is Phop',
                onChanged: (aboutme) {},
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              UpdateProfile(onTap: () {}, text: 'Update Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
