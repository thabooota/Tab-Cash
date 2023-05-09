import 'package:flutter/material.dart';
import 'widget/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  final ScreenArguments arguments;
  const VerificationView({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerificationViewBody(
        arguments: arguments,
      ),
    );
  }
}
