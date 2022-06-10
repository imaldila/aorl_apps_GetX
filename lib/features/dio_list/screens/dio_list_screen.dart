import 'package:aorl_apps_getx/features/dio_list/controllers/diolist_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/card_user.dart';

class DioListScreen extends StatelessWidget {
  const DioListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usersC = Get.put(DioListController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio GetX'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              if (usersC.isFetching.isTrue) {
                return const Center(child: CircularProgressIndicator());
              }

              if (usersC.isFetching.isFalse) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: usersC.userData.length,
                  itemBuilder: (context, index) => UserCard(
                    users: usersC.userData,
                    index: index,
                  ),
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
                  usersC.fetchListUser();
                  print(usersC.userData.length);
                },
                child: const Text('GET'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // SizedBox(
            //   width: 100,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       userC.postUser(
            //         email: 'aldila@email.com',
            //         firstName: 'Aldila',
            //         lastName: 'Nurhadiputra',
            //       );
            //       print(user?.email ?? '-');
            //     },
            //     child: const Text('POST'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
