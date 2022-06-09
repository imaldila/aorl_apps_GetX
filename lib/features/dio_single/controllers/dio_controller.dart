import 'package:aorl_apps_getx/features/dio_single/models/user.dart';
import 'package:aorl_apps_getx/features/dio_single/services/services.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DioController extends GetxController {
  final UserRository userRository = UserService();

  var user = User().obs;
  RxBool isFetching = false.obs;

  final RxList<User> _listUser = <User>[].obs;
  List<User> get listUser => _listUser;



  @override
  void onInit() {
    fetchUser();
    // fetchAllUser();
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
      isFetching.value = true;
      var getUser = await userRository.getUser();
      user.value = getUser!;
      isFetching.value = false;
      update();
      if (kDebugMode) {
        print('Success');
      }
    } catch (e) {
      isFetching.value = false;
      if (kDebugMode) {
        print('error getUser: $e');
      }
    }
  }

  void fetchAllUser() async {
    try {
      isFetching.value = true;
      var getAllUser = await userRository.getUsers();
      _listUser.add(getAllUser!);
      isFetching.value = false;
      update();
      if (kDebugMode) {
        print('Success');
      }
    } catch (e) {
      isFetching.value = false;
      if (kDebugMode) {
        print('error getUser: $e');
      }
    }
  }
}
