import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_text_field.dart';
import '../../../../../../core/widget/logo.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var newPasswordController = TextEditingController();
    var repeatNewPasswordController = TextEditingController();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(height: 40.0,),
        const LogoView(),
        const Text(
          'Change Password',
          style: Styles.textStyle32,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 28.0,
        ),
        CustomTextField.customTextFormField(
          prefixIcon: const Icon(FontAwesomeIcons.lock),
          obscure: false,
          controller: newPasswordController,
          text: 'Password',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility_outlined),
          ),
          inputType: TextInputType.visiblePassword,
          validation: (value) {
            return null;
          },
        ),
        const SizedBox(
          height: 24.0,
        ),
        CustomTextField.customTextFormField(
          prefixIcon: const Icon(FontAwesomeIcons.lock),
          obscure: false,
          controller: repeatNewPasswordController,
          text: 'Password',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility_outlined),
          ),
          inputType: TextInputType.visiblePassword,
          validation: (value) {
            return null;
          },
        ),
        const SizedBox(
          height: 24.0,
        ),
        CustomButton.customTextButton(
          text: 'Change Password',
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.homeRoute);
          },
        ),
      ],
    );
  }
}
