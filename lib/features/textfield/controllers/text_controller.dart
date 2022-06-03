// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  final formKey = GlobalKey<FormState>();
  late TextEditingController userEmailC, userNameC, passC;

  @override
  void onInit() {
    userEmailC = TextEditingController();
    userNameC = TextEditingController();
    passC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    userEmailC.dispose();
    userNameC.dispose();
    passC.dispose();
    super.onClose();
  }

  String userEmail = '';
  String userName = '';
  String userPassword = '';

  // String? emailValidator(String value) {
  //   if (value.isEmpty || !value.contains('@')) {
  //     return 'Please enter a valid email address.';
  //   }
  //   return null;
  // }

  String? emailValidator(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  String? userNameValidator(String value) {
    if (value.isEmpty || value.length < 4) {
      return 'Password must be at least 4 characters long.';
    }
    return null;
  }

  String? passwordValidator(String value) {
    if (value.isEmpty || value.length < 7) {
      return 'Password must be at least 7 characters long.';
    }
    return null;
  }

  void trySubmit() {
    final isValid = formKey.currentState!.validate();
    Get.focusScope!.unfocus();

    if (!isValid) {
      print(userEmail);
      print(userName);
      print(userPassword);

      // User those values to send our auth request ...
    }
    formKey.currentState!.save();
  }
}
