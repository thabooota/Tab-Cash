import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/drop_down_button.dart';
import '../../../../../core/widget/custom_dropdown_button2.dart';
import '../../../../../core/widget/label_text.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/widget/custom_text_field.dart';

Widget bottomSheet(context) {
  var serviceController = TextEditingController();
  var controller = TextEditingController();
  var passwordController = TextEditingController();

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        labelText(text: "Service"),
        const DropdownButtonView(),
        labelText(text: "Subscription number"),
        CustomTextField.customTextFormField(
            controller: controller,
            text: 'Enter Your Subscription number',
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
          height: 20.0,
        ),
        Center(
          child: SizedBox(
              width: 160.0,
              child: CustomButton.customTextButton(
                  text: 'Confirm', onPressed: () {})),
        ),
      ],
    ),
  );
}


