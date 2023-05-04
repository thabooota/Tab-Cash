import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_text_field.dart';
import '../../../../../../core/widget/logo.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneNameController = TextEditingController();

    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      children: [
        const SizedBox(
          height: 40.0,
        ),
        const LogoView(),
        const Text(
          'Forget Password?',
          style: Styles.textStyle32,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 28.0,
        ),
        CustomTextField.customTextFormField(
          validation: (value) {
            return null;
          },
          inputType: TextInputType.phone,
          prefixIcon: FontAwesomeIcons.phone,
          controller: phoneNameController,
          text: 'Phone number',
        ),
        const SizedBox(
          height: 24.0,
        ),
        CustomButton.customTextButton(
            text: 'Send Code',
            onPressed: () {
              Navigator.pushNamed(context, Routes.changePasswordRoute);
            }),
        const SizedBox(
          height: 8.0,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.changePasswordRoute);
          },
          child: Text(
            'Back',
            style:
                Styles.textStyle20.copyWith(color: ColorManager.defaultColor),
          ),
        ),
      ],
    );
  }
}
