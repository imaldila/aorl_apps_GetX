import 'package:aorl_apps_getx/features/dio_list/models/dio_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/diolist_controller.dart';

class UserCard extends StatelessWidget {
  UserCard({
    Key? key,
    required this.users,
    required this.index,
  }) : super(key: key);

  final List<UserData>? users;
  final uC = Get.find<DioListController>();
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              users![index].avatar!,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 1,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
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
                      Expanded(
                        // width: 220,
                        child: Text(': ${users![index].id ?? '-'}'),
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
                      Expanded(
                        // width: 220,
                        child: Text(
                            ': ${users![index].firstName ?? '-'}' ' ' +
                                (users![index].lastName ?? '-')),
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
                      Expanded(
                        // width: 220,
                        child: Text(': ${users![index].email ?? '-'}'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
