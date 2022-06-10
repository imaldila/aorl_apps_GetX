import 'package:aorl_apps_getx/features/dio_list/models/dio_list_model.dart';
import 'package:dio/dio.dart';

class UserArguments {
  String firstName, lastName, email;

  UserArguments({
    required this.firstName,
    required this.lastName,
    required this.email,
  });
}

abstract class UsersRository {
  Future<Users> getUsers();
}

class UsersService extends UsersRository {
  //get List User
  @override
  Future<Users> getUsers() async {
    try {
      var response = await Dio().get('https://reqres.in/api/users?page=2');
      return Users.fromJson(response.data);
    } catch (e) {
      throw (Exception(e.toString()));
    }
  }
}
