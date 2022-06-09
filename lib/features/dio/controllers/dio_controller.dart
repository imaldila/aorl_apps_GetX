import 'package:aorl_apps_getx/features/dio/models/user.dart';
import 'package:aorl_apps_getx/features/dio/services/services.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DioController extends GetxController {
  final UserRository userRository = UserService();

  var user = User().obs;

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

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
      var postUser = await userRository.postUser(request);
      user.value = postUser!;
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

  void fetchUser() async {
    try {
      var getUser = await userRository.getUser();
      user.value = getUser!;
      update();
      if (kDebugMode) {
        print('Success');
      }
    } catch (e) {
      if (kDebugMode) {
        print('error getUser: $e');
      }
    }
  }
}
