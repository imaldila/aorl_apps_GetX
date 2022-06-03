// ignore_for_file: avoid_print

import 'package:aorl_apps_getx/features/radio/models/bank_list_model.dart';
import 'package:aorl_apps_getx/features/radio/models/gender_model.dart';
import 'package:get/get.dart';

class RadioController extends GetxController {
  ListGender genders = ListGender();
  BankList banks = BankList();
  final RxString static = 'static'.obs;
  RxBool isStatic = false.obs;

  @override
  void onInit() {
    fetchGender();
    fetchBank();
    onSelectedBank(-1);
    super.onInit();
  }

  final RxList<Bank> _bankList = <Bank>[].obs;
  List<Bank> get bankList => _bankList;

  final RxList<Gender> _listGender = <Gender>[].obs;
  List<Gender> get listGender => _listGender;

  RxBool isFetching = false.obs;

  var selectedGenders = ''.obs;
  RxInt selectedBank = 0.obs;

  // gendersLenght() => genders.length;

  fetchGender() {
    try {
      isFetching.value = true;
      _listGender.addAll(genders.listGender);
      isFetching.value = false;
      update();
    } catch (e) {
      isFetching.value = false;
      print(e.toString());
    }
  }

  fetchBank() {
    try {
      isFetching.value = true;
      _bankList.addAll(banks.bankList);
      isFetching.value = false;
      update();
    } catch (e) {
      isFetching.value = false;
      print(e.toString());
    }
  }

  onChangedGender(var gender) {
    selectedGenders.value = gender;
    update();
  }

  onSelectedBank(int index) {
    selectedBank.value = index;
    update();
  }
}
