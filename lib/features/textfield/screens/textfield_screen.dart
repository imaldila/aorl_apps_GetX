import 'package:aorl_apps_getx/features/textfield/controllers/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(TextController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField GetX'),
      ),
      body: TextField(
        controller: c.textC,
      ),
    );
  }
}
