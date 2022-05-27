import 'package:aorl_apps_getx/features/radio/controllers/radio_controllers.dart';
import 'package:aorl_apps_getx/features/radio/models/bank_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FemaleScreen extends StatelessWidget {
  FemaleScreen({Key? key}) : super(key: key);

  final radioC = Get.find<RadioController>();

  @override
  Widget build(BuildContext context) {
    BankList bankList = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Female'),
      ),
      body: Center(
        child: Text(bankList.label ?? 'No Data'),
      ),
    );
  }
}
