import 'package:flutter/material.dart';
import 'package:JobO/components/my_button.dart';
import 'package:JobO/models/user.dart';
import 'package:JobO/components/profile_widget.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03764D),
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
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "My Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "Karla",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              ProfileWidget(
                imagePath:
                    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Center(child: buildName()),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Align buttons in the center
                children: [
                  EditProfileButton(
                    onTap: () {},
                    text: 'Edit Profile',
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.05), // Add some space between the buttons
                  ViewAppicationButton(
                    onTap: () {},
                    text: 'View Application',
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReviewNumberButton(onTap: () {}, text: '59 Reviews'),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  FollowNumberButton(onTap: () {}, text: '5 Followers'),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth, // Adjust height as needed
                child: buildAbout(), // Use buildAbout function here
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildName() => Column(
      children: [
        Text(
          'Siraphop Maeprasart',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
            fontFamily: 'Karla',
          ),
        ),
        const SizedBox(height: 4),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Bangkok, Thailand',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );

Widget buildAbout() => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            'About Me',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
