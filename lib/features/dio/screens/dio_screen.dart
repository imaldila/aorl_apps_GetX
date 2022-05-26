import 'package:aorl_apps_getx/features/dio/controllers/dio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user.dart';

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
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // UserCard(user: userC.user.value),
              Text(user?.firstName?.toString() ?? '-'),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
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
                      email: 'email@.com',
                      firstName: 'Test',
                      lastName: 'Test',
                    );
                  },
                  child: const Text('POST'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
