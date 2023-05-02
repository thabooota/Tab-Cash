import 'package:flutter/material.dart';
import 'animation_route.dart';
import '../../features/authentication/login/presentation/view/forget_password.dart';
import '../../features/authentication/login/presentation/view/login_screen.dart';
import '../../features/splash_screen/splash_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String registerRoute = "/register";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return SlideRight(page: const SplashScreenView());

      case Routes.loginRoute:
        return SlideRight(page: const LoginScreenView());

      case Routes.forgetPasswordRoute:
        return SlideRight(page: const ForgetPasswordView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Not Found Route"),
        ),
        body: const Center(
          child: Text("Not Found Route"),
        ),
      ),
    );
  }
}
