import 'package:go_router/go_router.dart';
import 'package:smartwallet/features/authentication/login/presentation/view/forget_password.dart';
import 'package:smartwallet/features/authentication/login/presentation/view/login_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(routes:
  [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreenView(),
    ),
    GoRoute(
      path: '/forgetPassword',
      builder: (context, state) => const ForgetPasswordView(),
    ),
  ]);
}