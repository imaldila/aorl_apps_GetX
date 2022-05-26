import 'package:aorl_apps_getx/features/radio/models/gender_model.dart';
import 'package:get/get.dart';

class RadioController extends GetxController {
  final List<Gender> genders = [
    Gender(label: 'Male'),
    Gender(label: 'Female'),
  ];

  var selectedGenders = ''.obs;

  gendersLenght() => genders.length;

  onChangedGender(var gender) {
    selectedGenders.value = gender;
    update();
  }
}
