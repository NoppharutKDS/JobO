import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String? username;
  final String? email;
  final String? photoUrl;
  final String? aboutme;

  User({
    this.username,
    this.email,
    this.photoUrl,
    this.aboutme,
  });

  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
      email: doc['email'] as String?,
      username: doc['username'] as String?,
      photoUrl: doc['image_path'] as String?,
      aboutme: doc['aboutme'] as String?,
    );
  }
}
