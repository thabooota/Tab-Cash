import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';
import 'package:smartwallet/core/widget/custom_button.dart';
import 'package:smartwallet/core/widget/custom_text_field.dart';

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
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsetsDirectional.all(15.0),
      children: [
        Text(
          'Card Number',
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        CustomTextField.customTextFormField(
            controller: cardNumController,
            text: 'Enter your card number',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          'CVV Number',
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        CustomTextField.customTextFormField(
            controller: cvvNumController,
            text: 'Enter 3 or 4 digit number on the card',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          'Expire Date',
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
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
            const SizedBox(width: 60.0),
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
        const SizedBox(
          height: 15.0,
        ),
        Text(
          'Money',
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        CustomTextField.customTextFormField(
            controller: moneyController,
            text: 'Enter amount of money',
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            }),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          'Password',
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
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
                Styles.textStyle20.copyWith(color: ColorManager.defaultColor),
          ),
        ))
      ],
    );
  }
}
