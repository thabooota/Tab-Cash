import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/features/authentication/register/presentation/views/widget/verification_view_body.dart';
import '../../../../../../core/widget/custom_text_field.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/logo.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var nationIdController = TextEditingController();
    var phoneIdController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      physics: const BouncingScrollPhysics(),
      children: [
        const LogoView(),
        Row(
          children: [
            Expanded(
              child: CustomTextField.customTextFormField(
                prefixIcon: const Icon(FontAwesomeIcons.solidUser),
                controller: firstNameController,
                inputType: TextInputType.text,
                validation: (value) {
                  return null;
                },
                text: 'First Name',
              ),
            ),
            const SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: CustomTextField.customTextFormField(
                prefixIcon: const Icon(FontAwesomeIcons.solidUser),
                controller: lastNameController,
                inputType: TextInputType.text,
                validation: (value) {
                  return null;
                },
                text: 'Last Name',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
        CustomTextField.customTextFormField(
          prefixIcon: const Icon(FontAwesomeIcons.solidIdCard),
          controller: nationIdController,
          inputType: TextInputType.number,
          validation: (value) {
            return null;
          },
          text: 'National Id',
        ),
        const SizedBox(
          height: 24.0,
        ),
        CustomTextField.customTextFormField(
          prefixIcon: Icon(FontAwesomeIcons.phone),
          controller: phoneIdController,
          inputType: TextInputType.phone,
          validation: (value) {
            return null;
          },
          text: 'Phone',
        ),
        const SizedBox(
          height: 24.0,
        ),
        CustomTextField.customTextFormField(
          prefixIcon: Icon(FontAwesomeIcons.lock),
          obscure: false,
          controller: passwordController,
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
          controller: confirmPasswordController,
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
          text: 'Register',
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              Routes.verificationRoute,
              arguments: ScreenArguments(phoneNumber: "+201050609664",otpComplete: "",verificationId: "", newAccount: true),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Do You have an account?',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorManager.darkTextColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginRoute);
              },
              child: Text(
                'Login',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
