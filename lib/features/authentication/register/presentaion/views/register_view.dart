import 'package:flutter/material.dart';
import 'package:smartwallet/features/authentication/register/presentaion/views/widget/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterViewBody(),
    );
  }
}
