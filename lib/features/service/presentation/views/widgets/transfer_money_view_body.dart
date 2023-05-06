import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/widget/custom_text_field.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widget/label_text.dart';

class TransferMoneyViewBody extends StatelessWidget {
  const TransferMoneyViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneNumberController = TextEditingController();
    var moneyController = TextEditingController();
    var passwordController = TextEditingController();

    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      children: [
        const SizedBox(
          height: 10.0,
        ),
        labelText(text: 'Phone Number'),
        CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.phone),
            controller: phoneNumberController,
            text: 'Enter the number you want to transfer to',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        labelText(text: 'Money'),
        CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.euroSign),
            controller: moneyController,
            text: '  Enter the money you want to transfer',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        labelText(text: 'Password'),
        CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.lock),
            controller: passwordController,
            text: 'Enter your password to transfer',
            inputType: TextInputType.visiblePassword,
            obscure: true,
            validation: (value) {
              return null;
            }),
        const SizedBox(
          height: 30.0,
        ),
        Center(
          child: SizedBox(
            width: 210.0,
            child: CustomButton.customTextButton(
                text: 'Confirm', onPressed: () {}),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style:
                  Styles.textStyle20.copyWith(color: ColorManager.defaultColor),
            ),
          ),
        ),
      ],
    );
  }
}
