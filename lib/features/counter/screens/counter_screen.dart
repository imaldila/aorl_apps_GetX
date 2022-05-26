import 'package:aorl_apps_getx/features/counter/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final c = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter GetX'),
      ),
      body: Center(
        // Use Obx
        child: Obx(
          () => Text(
            'Angka ${c.counter}',
            style: const TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
