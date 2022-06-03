import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/radio_controllers.dart';

class CardBankList extends StatelessWidget {
  CardBankList({
    Key? key,
    required this.radioC,
  }) : super(key: key);

  final RadioController radioC;
  final data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: radioC.banks.bankList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            width: 1,
            color: Colors.lightBlue,
          ),
        ),
        child: Obx(
          () => InkWell(
            onTap: () {
              if (radioC.selectedGenders.value == 'Female') {
                radioC.onSelectedBank(index);
                if (kDebugMode) {
                  print(radioC.banks.bankList[index].label);
                }
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: (radioC.selectedBank.value == index)
                    ? Colors.lightBlue
                    : Colors.white24,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 70,
                    width: 80,
                    child: radioC.banks.bankList[index].icon,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    radioC.banks.bankList[index].label!,
                    style: ThemeData().textTheme.bodyText2,
                  ),
                  const Spacer(),
                  const Icon(Icons.keyboard_arrow_right),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
