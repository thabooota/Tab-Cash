import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/app_router.dart';

class SplashScreenViewBody extends StatefulWidget {
  const SplashScreenViewBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenViewBody> createState() => _SplashScreenViewBodyState();
}

class _SplashScreenViewBodyState extends State<SplashScreenViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        context,
        Routes.loginRoute,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AssetsManager.logo,
        height: 260.0,
      ),
    );
  }
}
