import 'package:flutter/material.dart';
import 'package:smartwallet/features/authentication/login/presentation/view/widget/change_password_body.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChangePasswordViewBody(),
    );
  }
}
