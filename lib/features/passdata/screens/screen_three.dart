import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../router/route_name.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Text('This is Argument : ${Get.arguments}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
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
