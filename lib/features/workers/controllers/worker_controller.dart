import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WorkerController extends GetxController {
  var countWorker = 0.obs;

  final wC = TextEditingController();

  void count() => countWorker++;

  void reset() => countWorker.value = 0;

  @override
  void onInit() {
    print('onInit');
    //.... Workers

    // ever(countWorker, (_) => print('Running something.'));

    // everAll([countWorker], (_) => print('Running something.'));

    // once(countWorker, (_) => print('Running something.'));

    // debounce(countWorker, (_) => print('Running something.'),
    //     time: Duration(seconds: 2));

    interval(countWorker, (_) => print('Running something.'),
        time: Duration(seconds: 2));
    super.onInit();
  }
}
