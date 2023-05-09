import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../../../core/widget/logo.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widget/custom_button.dart';

class ScreenArguments {
  late String otpComplete;
  late String phoneNumber;
  late String verificationId;
  late bool newAccount;

  ScreenArguments({
    required this.otpComplete,
    required this.phoneNumber,
    required this.verificationId,
    required this.newAccount,
  });
}

class VerificationViewBody extends StatelessWidget {
  final ScreenArguments arguments;

  const VerificationViewBody({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const LogoView(),
            const Text(
              'Code Verification',
              style: Styles.textStyle32,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              "We Will Send 4 digit Verification Code to\n your ${arguments.phoneNumber}, Please Enter It.",
              style: Styles.textStyle16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: PinCodeTextField(
                appContext: context,
                animationCurve: Curves.easeInOut,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                length: 4,
                obscureText: false,
                animationType: AnimationType.scale,
                textStyle: Styles.textStyle20,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(3),
                  fieldHeight: 53,
                  fieldWidth: 57,
                  borderWidth: 1.2,
                  activeFillColor:
                      ColorManager.defaultColor, // اللون الي جوا لما يبقا متحدد
                  inactiveFillColor: ColorManager
                      .scaffoldBackgroundColor, // اللون الي جوا لما يبقا مش متحدد
                  activeColor: ColorManager.defaultColor, // لون البوردرالمتحدده
                  inactiveColor:
                      ColorManager.defaultColor, // لون البوردر الي مش متحدده
                  selectedFillColor: ColorManager
                      .scaffoldBackgroundColor, // اللون الي انا واقف عليه
                  selectedColor: ColorManager.defaultColor,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                onCompleted: (code) {
                  arguments.otpComplete = code;
                },
                onChanged: (value) {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t Receive Code? ',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 42.0,
            ),
            CustomButton.customTextButton(
              text: 'Verify & Continue',
              onPressed: () {
                if(arguments.newAccount){
                  Navigator.pushReplacementNamed(context, Routes.homeRoute);
                }else{
                  Navigator.pushReplacementNamed(context, Routes.changePasswordRoute);
                }
              },
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.registerRoute);
              },
              child: Text(
                'Back',
                style: Styles.textStyle20
                    .copyWith(color: ColorManager.defaultColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
