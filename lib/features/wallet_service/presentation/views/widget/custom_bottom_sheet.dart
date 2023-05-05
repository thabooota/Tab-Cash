import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/styles.dart';
import 'package:smartwallet/core/widget/custom_button.dart';
import 'package:smartwallet/core/widget/custom_text_field.dart';

import '../../../../../core/utils/color_manager.dart';

Widget bottomSheet(context,{required String text}) {
  var serviceController = TextEditingController();
  var controller = TextEditingController();
  var passwordController = TextEditingController();
  return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: IconButton(
                  onPressed: () {Navigator.pop(context);},
                  icon: const Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 40.0,
                    color: ColorManager.defaultColor,
                  )),
            ),
            const Text(
              '   Service' ,
              style: Styles.textStyle24,
            ),
            CustomTextField.customTextFormField(
                controller: serviceController,
                text: 'هيجي من الباك اند',
                inputType: TextInputType.number,
                validation: (value) {
                  return null;
                }),
             const SizedBox(height: 10.0,),
             Text(
              text ,
              style: Styles.textStyle24,
            ),
            CustomTextField.customTextFormField(
                controller: controller,
                text: 'Enter Your $text',
                inputType: TextInputType.number,
                validation: (value) {
                  return null;
                }),
            const SizedBox(height: 10.0,),
            const Text(
              '   Password' ,
              style: Styles.textStyle24,
            ),
            CustomTextField.customTextFormField(
                controller: passwordController,
                text: 'Enter your card password',
                inputType: TextInputType.number,
                validation: (value) {
                  return null;
                }),
            const SizedBox(height: 10.0,),
            Center(
              child: SizedBox(
                  width: 160.0,child: CustomButton.customTextButton(text: 'Confirm', onPressed: () {})),
            ),
          ],
        ),
      ),
    );
}
