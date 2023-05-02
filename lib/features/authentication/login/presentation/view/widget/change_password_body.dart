import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_text_field.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var newPasswordController = TextEditingController();
    var repeatNewPasswordController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        SizedBox(
          /*مؤقتا لحد ما داليا تبعت اللوجو */
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 8.0 , horizontal: MediaQuery.of(context).size.width * .152),
          child: const Text(
            'Forget Password?',
            style: Styles.textStyle32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: customTextField(
              prefixIcon: FontAwesomeIcons.lock,
              obscure: false,
              controller: newPasswordController,
              text: 'New Password'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: customTextField(
              prefixIcon: FontAwesomeIcons.lock,
              obscure: false,
              controller: repeatNewPasswordController,
              text: 'Repeat New Password'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: customButton(
              text: 'Change Password',
              onPressed: () {

              }),
        ),
      ],
    );
  }
}
