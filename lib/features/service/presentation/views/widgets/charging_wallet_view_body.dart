import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/widget/custom_text_field.dart';
import '../../../../../core/widget/label_text.dart';

class ChargingWalletViewBody extends StatelessWidget {
  const ChargingWalletViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cardNumController = TextEditingController();
    var cvvNumController = TextEditingController();
    var expireDateMonthController = TextEditingController();
    var expireDateYearController = TextEditingController();
    var moneyController = TextEditingController();
    var passwordController = TextEditingController();

    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 8.0),
      children: [
        labelText(text: "Card Number"),
        CustomTextField.customTextFormField(
            controller: cardNumController,
            text: 'Enter your card number',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        labelText(text: "CVV Number"),
        CustomTextField.customTextFormField(
            controller: cvvNumController,
            text: 'Enter 3 or 4 digit number on the card',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        labelText(text: "Expire Date"),
        Row(
          children: [
            Expanded(
              child: CustomTextField.customTextFormField(
                  controller: expireDateMonthController,
                  text: '   Month',
                  inputType: TextInputType.number,
                  validation: (value) {
                    return null;
                  }),
            ),
            const SizedBox(width: 32.0),
            Expanded(
              child: CustomTextField.customTextFormField(
                  controller: expireDateYearController,
                  text: '   Year',
                  inputType: TextInputType.number,
                  validation: (value) {
                    return null;
                  }),
            ),
          ],
        ),
        labelText(text: "Money"),
        CustomTextField.customTextFormField(
            controller: moneyController,
            text: 'Enter amount of money',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        labelText(text: "Password"),
        CustomTextField.customTextFormField(
            controller: passwordController,
            text: 'Enter your card password',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        const SizedBox(
          height: 35.0,
        ),
        Center(
          child: SizedBox(
            width: 210.0,
            child:
                CustomButton.customTextButton(text: 'Charge', onPressed: () {}),
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
                Styles.textStyle20.copyWith(color: ColorManager.darkDefaultColor),
          ),
        ))
      ],
    );
  }
}
