import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartwallet/features/authentication/login/presentation/view/widget/login_screen_body.dart';
import '../../../../../constants.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white10,
        ),
        backgroundColor: scaffoldBackgroundColor,
      ),
      body: const LoginScreenViewBody(),
    );
  }
}
