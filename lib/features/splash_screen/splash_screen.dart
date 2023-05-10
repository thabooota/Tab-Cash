import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/utils/color_manager.dart';
import 'widget/splash_screen_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.darkScaffoldBackgroundColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorManager.darkScaffoldBackgroundColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: const SplashScreenViewBody(),
    );
  }
}
