import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_text_field.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      children: [
        const SizedBox(
          height: 80.0,
        ),
        SvgPicture.asset(
          AssetsManager.logo,
          height: 220.0,
        ),
        const SizedBox(
          height: 58.0,
        ),
        CustomTextField.customTextFormField(
          prefixIcon: FontAwesomeIcons.phone,
          controller: phoneNumberController,
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
          prefixIcon: FontAwesomeIcons.lock,
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
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, Routes.forgetPasswordRoute);
            },
            child: Text(
              'Forget Password?',
              style: Styles.textStyle16.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomButton.customTextButton(
          text: 'Login',
          onPressed: () {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t You have an account?',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.registerRoute);
              },
              child: Text(
                'Register',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
