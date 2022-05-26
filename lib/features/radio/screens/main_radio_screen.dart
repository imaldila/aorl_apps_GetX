import 'package:aorl_apps_getx/features/radio/models/gender_model.dart';
import 'package:aorl_apps_getx/router/route_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/radio_controllers.dart';

class MainRadioScreen extends StatelessWidget {
  MainRadioScreen({Key? key}) : super(key: key);

  final radioC = Get.find<RadioController>();

  @override
  Widget build(BuildContext context) {
    print('rebuild MainRadioScreen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio GetX'),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          if (radioC.selectedGenders.value == 'Male') {
            Get.toNamed(RouteName.maleScreen);
          } else {
            Get.toNamed(RouteName.femaleScreen);
          }
        },
        child: Text('Go To Next Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: radioC.gendersLenght(),
              itemBuilder: (ctx, index) => (radioC.genders[index].label ==
                          'Female' ||
                      radioC.genders[index].label == 'Male')
                  ? Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile(
                            title: Text(radioC.genders[index].label),
                            value: radioC.genders[index].label,
                            groupValue: radioC.selectedGenders.value,
                            onChanged: (value) {
                              radioC.onChangedGender(value);
                              if (kDebugMode) {
                                print(
                                    'tapped: ${radioC.selectedGenders.value}');
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 36.0 * 2),
                            child: Column(
                              children: [
                                (radioC.genders[index].label == 'Female')
                                    ? Column(
                                        children: [
                                          Text(
                                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                                            style: ThemeData.light()
                                                .textTheme
                                                .bodyText2,
                                            textAlign: TextAlign.justify,
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              side: const BorderSide(
                                                width: 1,
                                                color: Colors.lightBlue,
                                              ),
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                color: Colors.white24,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    height: 70,
                                                    width: 80,
                                                    child: const Icon(
                                                      Icons.favorite,
                                                      color: Colors.lightBlue,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'BCA',
                                                    style: ThemeData()
                                                        .textTheme
                                                        .bodyText2,
                                                  ),
                                                  const Spacer(),
                                                  const Icon(Icons
                                                      .keyboard_arrow_right),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Text('Female'),
                                        ],
                                      )
                                    : (radioC.genders[index].label == 'Male')
                                        ? Column(
                                            children: const [
                                              Text('Male'),
                                              Text('Male'),
                                              Text('Male'),
                                            ],
                                          )
                                        : Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
