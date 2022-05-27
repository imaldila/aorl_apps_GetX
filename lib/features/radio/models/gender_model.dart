class Gender {
  final String label;

  Gender({required this.label});
}

class ListGender {
  final List<Gender> listGender = [
    Gender(label: 'Male'),
    Gender(label: 'Female'),
  ];
}
