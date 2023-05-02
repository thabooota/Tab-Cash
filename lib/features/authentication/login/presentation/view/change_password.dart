import 'package:flutter/material.dart';
import 'widget/change_password_body.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChangePasswordViewBody(),
    );
  }
}
