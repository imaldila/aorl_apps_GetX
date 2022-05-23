import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../router/route_name.dart';
import '../models/argument_model.dart';
import '../models/name_model.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ArgumentModel argumentModel = Get.arguments[0];

    Name name = Get.arguments[1];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Screen One'),
            const SizedBox(height: 16),
            Text('This is Argument Model : ${argumentModel.listArg}'),
            // Text('This is Argument Name : ${name.name}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.screentwo,
                    arguments: [argumentModel, name]);
              },
              child: const Text('Go to Screen Two'),
            ),
          ],
        ),
      ),
    );
  }
}
