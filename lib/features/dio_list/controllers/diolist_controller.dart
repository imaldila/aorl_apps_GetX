import 'package:aorl_apps_getx/features/dio_list/models/dio_list_model.dart';
import 'package:aorl_apps_getx/features/dio_list/services/diolist_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DioListController extends GetxController {
  UsersRository usersRository = UsersService();

  final RxList<UserData> _userData = <UserData>[].obs;
  List<UserData> get userData => _userData;

  RxBool isFetching = false.obs;
  @override
  void onInit() {
    fetchListUser();
    super.onInit();
  }

  void fetchListUser() async {
    try {
      isFetching.value = true;
      var userLists = await usersRository.getUsers();
      _userData.addAll(userLists.data!);
      isFetching.value = false;
      update();
    } catch (e) {
      if (kDebugMode) {
        print('error postUser: $e');
      }
    }
  }
}
