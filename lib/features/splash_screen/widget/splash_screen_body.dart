import 'package:flutter/material.dart';
import 'package:smartwallet/core/widget/custom_button.dart';

import '../../../core/utils/app_router.dart';

class SplashScreenViewBody extends StatelessWidget {
  const SplashScreenViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: customButton(
        text: "Go",
        onPressed: () {
          Navigator.pushNamed(context, Routes.loginRoute);
        },
      ),
    );
  }
}
