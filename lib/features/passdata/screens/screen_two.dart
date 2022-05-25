import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/argument_model.dart';
import '../models/name_model.dart';
import 'components/col_arg.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Name name = Get.arguments[0];
    ArgumentModel argumentModel = Get.arguments[1];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
      ),
      body: Center(
        child: ColArg(argumentModel: argumentModel, name: name),
      ),
    );
  }
}
