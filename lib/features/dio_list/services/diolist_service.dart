import 'package:aorl_apps_getx/features/dio_list/models/dio_list_model.dart';

import 'package:dio/dio.dart';

import '../../../network/network_dio.dart';

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
  Dio get _dio => NetworkDio.createDio();
  //get List User
  @override
  Future<Users> getUsers() async {
    try {
      var response = await _dio.get('/users?page=2');
      return usersFromJson(response.data);
    } on DioError catch (e) {
      throw (Exception(e.toString()));
    }
  }
}
