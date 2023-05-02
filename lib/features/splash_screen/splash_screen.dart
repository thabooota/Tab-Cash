import 'package:flutter/material.dart';
import 'package:smartwallet/features/splash_screen/widget/splash_screen_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenViewBody(),
    );
  }
}
