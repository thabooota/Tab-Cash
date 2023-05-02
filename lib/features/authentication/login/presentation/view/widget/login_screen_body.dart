import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/app_router.dart';
import 'package:smartwallet/core/utils/styles.dart';
import 'package:smartwallet/core/widget/custom_button.dart';
import 'package:smartwallet/core/widget/custom_text_field.dart';

class LoginScreenViewBody extends StatelessWidget {
   const LoginScreenViewBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var phoneNumberController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: customTextField(
            prefixIcon: FontAwesomeIcons.phone,
              obscure: false,
              controller: phoneNumberController,
              text: 'Phone number'
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: customTextField(
            prefixIcon: FontAwesomeIcons.lock,
              obscure: false,
              controller: phoneNumberController,
              text: 'Password',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility_outlined),
            ),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.forgetPasswordRoute);
            },
            child: const Text(
              'Forget Password?',
              style: Styles.textStyle16),),
        SizedBox(
          height: MediaQuery.of(context).size.height *0.04,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: customButton(
              text: 'Login',
              onPressed: () {}),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'Don’t have an account?',
            style: Styles.textStyle16,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                    'Register',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ],
    );
  }
}
