import 'package:dio/dio.dart';

import '../models/user.dart';

class UserArguments {
  String firstName, lastName, email;

  UserArguments({
    required this.firstName,
    required this.lastName,
    required this.email,
  });
}

abstract class UserRository {
  Future<User?> postUser(UserArguments arguments);
  Future<User?> getUser();
  Future<User?> getUsers();
}

class UserService extends UserRository {
  @override
  Future<User?> postUser(UserArguments arguments) async {
    try {
      var response = await Dio().post('https://reqres.in/api/users', data: {
        'first_name': arguments.firstName,
        'last_name': arguments.lastName,
        'email': arguments.email,
      });
      return User.fromJson(response.data);
    } catch (e) {
      throw (Exception(e.toString()));
    }
  }

  //get Single User
  @override
  Future<User?> getUser() async {
    try {
      var response = await Dio().get('https://reqres.in/api/users/2');
      return User.fromJson(response.data!['data']);
    } catch (e) {
      throw (Exception(e.toString()));
    }
  }

  //get List User
  @override
  Future<User?> getUsers() async {
    try {
      var response = await Dio().get('https://reqres.in/api/users?page=2');
      return User.fromJson(response.data!['data']);
    } catch (e) {
      throw (Exception(e.toString()));
    }
  }
}
