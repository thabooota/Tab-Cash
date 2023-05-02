import 'package:flutter/material.dart';
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
          padding:  EdgeInsets.symmetric(vertical: 8.0 , horizontal: MediaQuery.of(context).size.width * .162),
          child: const Text(
              'Forget Password?',
            style: Styles.textStyle32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: customTextField(
              obscure: false,
              controller: phoneNameController,
              text: 'Phone number'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: customButton(
                text: 'Send Code',
                onPressed: () {

                }),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              // GoRouter.of(context).pop();
            },
            child: const Text(
                'Back',
            style: Styles.textStyle20,
            ),
        ),
      ],
    );
  }
}
