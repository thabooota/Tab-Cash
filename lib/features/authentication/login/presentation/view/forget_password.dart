import 'package:flutter/material.dart';
import 'package:smartwallet/features/authentication/login/presentation/view/widget/forget_password_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPasswordViewBody(),
    );
  }
}
