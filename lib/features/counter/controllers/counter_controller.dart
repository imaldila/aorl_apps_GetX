import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  var isDark = false.obs;

  increment() => counter++;

  changeTheme() => isDark.value = !isDark.value;
}
