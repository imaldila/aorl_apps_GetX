import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../router/route_name.dart';
import '../models/argument_model.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ArgumentModel argumentModel = Get.arguments[1];

    // Name name = Get.arguments[0];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Screen Three'),
            const SizedBox(height: 16),
            Text('This is Argument : ${argumentModel.listArg}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.offAndToNamed(
                  RouteName.passData,
                );
              },
              child: const Text('Go to Pass Data Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
