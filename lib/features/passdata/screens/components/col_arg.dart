import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../router/route_name.dart';
import '../../models/argument_model.dart';
import '../../models/name_model.dart';

class ColArg extends StatelessWidget {
  const ColArg({
    Key? key,
    required this.argumentModel,
    required this.name,
  }) : super(key: key);

  final ArgumentModel argumentModel;
  final Name name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Screen Two'),
        const SizedBox(height: 16),
        Text('This is Argument Model : ${argumentModel.listArg}'),
        Text('This is Argument Name : ${name.name}'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Get.toNamed(RouteName.screenthree, arguments: [
              name,
              argumentModel,
            ]);
          },
          child: const Text('Go to Screen Two'),
        ),
      ],
    );
  }
}
