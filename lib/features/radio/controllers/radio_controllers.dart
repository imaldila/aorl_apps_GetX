import 'package:aorl_apps_getx/features/radio/models/bank_list_model.dart';
import 'package:aorl_apps_getx/features/radio/models/gender_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioController extends GetxController {
  final List<Gender> genders = [
    Gender(label: 'Male'),
    Gender(label: 'Female'),
  ];

  final List<BankList> banks = [
    BankList(
      label: 'BCA',
      icon: const Icon(Icons.monitor_heart),
    ),
    BankList(
      label: 'Mandiri',
      icon: const Icon(Icons.logo_dev),
    ),
    BankList(
      label: 'BNI',
      icon: const Icon(Icons.monetization_on),
    ),
  ];

  var selectedGenders = ''.obs;
  RxInt selectedBank = 0.obs;

  gendersLenght() => genders.length;

  onChangedGender(var gender) {
    selectedGenders.value = gender;
    update();
  }

  onSelectedBank(int index) {
    selectedBank.value = index;
    update();
  }
}
