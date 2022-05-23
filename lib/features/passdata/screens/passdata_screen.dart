import 'package:aorl_apps_getx/features/passdata/models/name_model.dart';
import 'package:aorl_apps_getx/router/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/argument_model.dart';

class PassDataScreen extends StatelessWidget {
  const PassDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ArgumentModel argumentModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              RouteName.screenone,
              arguments: 
                [Name(name: 'Aldi')],
              
            );
          },
          child: const Text('Go to Screen One'),
        ),
      ),
    );
  }
}
