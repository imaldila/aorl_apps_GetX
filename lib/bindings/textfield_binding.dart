import 'package:aorl_apps_getx/features/textfield/controllers/text_controller.dart';
import 'package:get/get.dart';

class TextFieldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextController>(() => TextController());
  }
}
