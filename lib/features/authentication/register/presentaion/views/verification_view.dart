import 'package:flutter/material.dart';

import 'widget/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerificationViewBody(otpComplete: "",phoneNumber: "+201050609664",verificationId: "",);
  }
}
