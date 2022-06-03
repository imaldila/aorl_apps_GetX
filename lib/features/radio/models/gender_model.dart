class Gender {
  final String label;
  final bool status;

  Gender({
    required this.label,
    required this.status,
  });
}

class ListGender {
  final List<Gender> listGender = [
    Gender(label: 'Male', status: true),
    Gender(label: 'Female', status: true),
  ];
}
