import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/app_router.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';
import 'package:smartwallet/core/widget/custom_button.dart';
import 'package:smartwallet/core/widget/custom_text_field.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneNameController = TextEditingController();
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
            prefixIcon: FontAwesomeIcons.phone,
              obscure: false,
              controller: phoneNameController,
              text: 'Phone number'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: customButton(
              text: 'Send Code',
              onPressed: () {
                Navigator.pushNamed(context, Routes.changePasswordRoute);
              }),
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              // GoRouter.of(context).pop();
            },
            child: Text(
                'Back',
            style: Styles.textStyle20.copyWith(
              color: ColorManager.defaultColor
            ),
            ),
        ),
      ],
    );
  }
}
