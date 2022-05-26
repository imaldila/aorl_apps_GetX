import 'package:aorl_apps_getx/features/radio/controllers/radio_controllers.dart';
import 'package:get/get.dart';

class RadioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RadioController>(() => RadioController());
  }
}
