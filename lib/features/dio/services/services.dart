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
}

class UserService extends UserRository {
  @override
  Future<User?> postUser(
      UserArguments arguments) async {
    try {
      var response = await Dio().post('https://reqres.in/api/users', data: {
        'first_name': arguments.firstName,
        'last_name': arguments.lastName,
        'email': arguments.email,
      });
      return fromJson(response.data);
      

    } catch (e) {
      throw (Exception(e.toString()));
    }
  }
}
