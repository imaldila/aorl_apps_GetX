import 'package:aorl_apps_getx/features/counter/screens/counter_screen.dart';
import 'package:aorl_apps_getx/features/textfield/screens/textfield_screen.dart';
import 'package:aorl_apps_getx/features/workers/screens/workers_screen.dart';
import 'package:aorl_apps_getx/router/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CounterScreen()));
              },
              child: const Text('Go To Counter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => TextFieldScreen()));
              },
              child: const Text('Go To TextField'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const WorkerScreen()));
              },
              child: const Text('Go To Workers GetX'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.passData);
              },
              child: const Text('Go To PassData'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.dioscreen);
              },
              child: const Text('Go To Dio'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.radioScreen);
              },
              child: const Text('Go To Radio'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.stackScreen);
              },
              child: const Text('Go To Stack'),
            ),
            // Text(Get.find<TextController>().textC.text),
            // Text(Get.find<CounterController>().counter.value.toString())
          ],
        ),
      ),
    );
  }
}
