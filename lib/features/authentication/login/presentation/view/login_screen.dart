import 'package:flutter/material.dart';
import 'widget/login_screen_body.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreenViewBody(),
    );
  }
}
