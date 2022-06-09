import 'package:aorl_apps_getx/features/dio_single/controllers/dio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user.dart';
import 'components/card_user.dart';

class DioScreen extends StatelessWidget {
  DioScreen({Key? key}) : super(key: key);

  final userC = Get.put(DioController());

  @override
  Widget build(BuildContext context) {
    User? user;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              if (userC.isFetching.isTrue) {
                return const Center(child: CircularProgressIndicator());
              }

              if (userC.isFetching.isFalse) {
                return UserCard(
                  user: userC.user.value,
                );
              } else {
                return const Center(
                  child: Text('Something went wrong.'),
                );
              }
            }),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  // userC.fetchAllUser();
                  print(userC.listUser.length);
                },
                child: const Text('GET'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  userC.postUser(
                    email: 'aldila@email.com',
                    firstName: 'Aldila',
                    lastName: 'Nurhadiputra',
                  );
                  print(user?.email ?? '-');
                },
                child: const Text('POST'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
