import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'widget/login_screen_body.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.scaffoldBackgroundColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white10,
          statusBarIconBrightness: Brightness.dark
        ),
      ),
      body: const LoginScreenViewBody(),
    );
  }
}
