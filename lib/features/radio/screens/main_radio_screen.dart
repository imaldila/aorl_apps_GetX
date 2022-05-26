import 'package:aorl_apps_getx/features/radio/models/gender_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/radio_controllers.dart';

class MainRadioScreen extends StatelessWidget {
  MainRadioScreen({Key? key}) : super(key: key);

  final radioC = Get.find<RadioController>();

  @override
  Widget build(BuildContext context) {
    print('rebuild MainRadioScreen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio GetX'),
      ),
      body: Center(
        child: Column(
          children: List.generate(
            radioC.gendersLenght(),
            (index) => Obx(
              () => RadioListTile(
                title: Text(radioC.genders[index].label),
                value: radioC.genders[index].label,
                groupValue: radioC.selectedGenders.value,
                onChanged: (value) {
                  radioC.onChangedGender(value);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
