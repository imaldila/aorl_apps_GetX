import 'package:aorl_apps_getx/features/dio/models/user.dart';
import 'package:aorl_apps_getx/features/dio/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioController extends GetxController {
  final UserRository userRository = UserService();

  var user = User().obs;

  void postUser(
      {required String email,
      required String firstName,
      required String lastName}) async {
    try {
      var request = User(
        email: email,
        firstName: firstName,
        lastName: lastName,
      );
      await userRository.postUser(email, firstName, lastName);
      update();
      print('Success');
    } catch (e) {
      print('error postUser: $e');
    }
  }
}
