import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/counter/controllers/counter_controller.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: const HomePage(),
      ),
    );
  }
}
