class User {
  final String name;
  final String username;
  final String profileImage;
  final String about;
  final int reviewsNumber;
  final int followingNumber;

  const User({
    required this.name,
    required this.username,
    required this.profileImage,
    required this.about,
    required this.reviewsNumber,
    required this.followingNumber,
  });

  factory User.fromJson(json) {
    return User(
      name: json['name'],
      username: json['username'],
      profileImage: json['profileImage'],
      about: json['about'],
      reviewsNumber: json['reviewsNumber'],
      followingNumber: json['followingNumber'],
    );
  }
}
