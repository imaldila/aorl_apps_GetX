import 'dart:convert';

// User userFromJson(String str) => User.fromJson(json.decode(str));

class User {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int,
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar'],
      );

  // fromJson(Map<String, dynamic> json) {
  //   return User(
  //     id: json['id'],
  //     email: json['email'],
  //     firstName: json['first_name'],
  //     lastName: json['last_name'],
  //   );
  // }
}

User fromJson(Map<String, dynamic> json) {
  return User(
    id: int.tryParse(json['data']['id']),
    email: json['data']['email'],
    firstName: json['data']['first_name'],
    lastName: json['data']['last_name'],
    avatar: json['data']['avatar'],
  );
}
