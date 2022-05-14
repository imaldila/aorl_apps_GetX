import 'package:aorl_apps_getx/features/workers/controllers/worker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkerScreen extends StatelessWidget {
  const WorkerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wC = Get.put(WorkerController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workers GetX'),
        actions: [
          IconButton(
              onPressed: () {
                 wC.reset();
                 wC.wC.clear();
              } 
             , icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Terjadi sesuatu : ${wC.countWorker} x',
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                onChanged: (_) => wC.count(),
                controller: wC.wC,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
