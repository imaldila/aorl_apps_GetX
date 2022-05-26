import 'package:aorl_apps_getx/features/dio/models/user.dart';
import 'package:aorl_apps_getx/features/dio/services/services.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DioController extends GetxController {
  final UserRository userRository = UserService();

  var user = User().obs;

  void postUser(
      {required String email,
      required String firstName,
      required String lastName}) async {
    try {
      var request = UserArguments(
        email: email,
        firstName: firstName,
        lastName: lastName,
      );
      await userRository.postUser(request);
      update();
      if (kDebugMode) {
        print('Success');
      }
    } catch (e) {
      if (kDebugMode) {
        print('error postUser: $e');
      }
    }
  }
}
