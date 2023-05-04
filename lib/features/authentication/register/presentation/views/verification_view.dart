import 'package:flutter/material.dart';
import 'widget/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  final String phoneNumber;
  const VerificationView({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerificationViewBody(
        otpComplete: "",
        phoneNumber: phoneNumber,
        verificationId: "",
      ),
    );
  }
}
