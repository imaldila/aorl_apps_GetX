import 'package:flutter/material.dart';

class Bank {
  final String? label;
  final Icon? icon;

  Bank({this.label, this.icon});
}
class BankList {
List<Bank> bankList = [
    Bank(
      label: 'BCA',
      icon: const Icon(Icons.monitor_heart),
    ),
    Bank(
      label: 'Mandiri',
      icon: const Icon(Icons.logo_dev),
    ),
    Bank(
      label: 'BNI',
      icon: const Icon(Icons.monetization_on),
    ),
  ];
}
 