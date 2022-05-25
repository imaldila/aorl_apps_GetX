import 'package:aorl_apps_getx/features/dio/controllers/dio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/user.dart';

class UserCard extends StatelessWidget {
  UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User? user;
  final uC = Get.find<DioController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 * 2),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.lightBlueAccent),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                  child: Text(
                    'ID',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: Text(': ${user?.id ?? '-'}'),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                  child: Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                 SizedBox(
                    width: 220,
                    child: Text(': ${user!.firstName ?? '-'}' +
                        (user!.lastName ?? '-')),
                  ),
              
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                  child: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: Text(': ${user?.email ?? '-'}'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
