import 'package:aorl_apps_getx/features/textfield/controllers/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldScreen extends StatelessWidget {
  TextFieldScreen({Key? key}) : super(key: key);

  final textFieldC = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField GetX'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: textFieldC.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                // TextFormField(
                //   controller: textFieldC.textC,
                // ),
                TextFormField(
                  validator: (value) {
                    return textFieldC.emailValidator(value!);
                  },
                  controller: textFieldC.userEmailC,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email address',
                  ),
                  onSaved: (value) {
                    textFieldC.userEmail = value!;
                  },
                ),
                TextFormField(
                  validator: (value) {
                    return textFieldC.userNameValidator(value!);
                  },
                  controller: textFieldC.userNameC,
                  decoration: const InputDecoration(labelText: 'Username'),
                  onSaved: (value) {
                    textFieldC.userName = value!;
                  },
                ),
                TextFormField(
                    validator: (value) {
                      return textFieldC.passwordValidator(value!);
                    },
                    controller: textFieldC.passC,
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    onSaved: (value) {
                      textFieldC.userPassword = value!;
                    }),
                const SizedBox(height: 12),
                ElevatedButton(
                    onPressed: () {
                      textFieldC.trySubmit();
                    },
                    child: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
