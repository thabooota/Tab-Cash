import 'package:flutter/material.dart';
import 'package:smartwallet/features/service/presentation/views/charging_wallet_service.dart';
import 'package:smartwallet/features/service/presentation/views/smart_card_service.dart';
import 'package:smartwallet/features/service/presentation/views/transfer_money_service.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/pay_bills_screen.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/pay_subscriptions_screen.dart';
import '../../features/authentication/login/presentation/view/change_password.dart';
import '../../features/authentication/register/presentation/views/register_view.dart';
import '../../features/authentication/register/presentation/views/verification_view.dart';
import '../../features/home/presentation/views/home_screen.dart';
import '../../features/notification/presentation/views/notification_screen.dart';
import '../../features/profile/presentation/views/profile_screen.dart';
import '../../features/qr/presentation/views/qr_screen.dart';
import 'animation_route.dart';
import '../../features/authentication/login/presentation/view/forget_password.dart';
import '../../features/authentication/login/presentation/view/login_screen.dart';
import '../../features/splash_screen/splash_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String registerRoute = "/register";
  static const String changePasswordRoute = "/changePassword";
  static const String verificationRoute = "/verification";
  static const String homeRoute = "/home";
  static const String qrRoute = '/qrPage';
  static const String notificationRoute = '/notification';
  static const String profileRoute = '/profile';
  static const String transferMoneyRoute = "/transferMoney";
  static const String smartCardRoute = "/smartCard";
  static const String chargingWalletRoute = "/chargingWallet";
  static const String payBillsRoute = '/payBills';
  static const String paySubscriptionsRoute = '/paySubscriptions';
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

      case Routes.changePasswordRoute:
        return SlideRight(page: const ChangePasswordView());

      case Routes.registerRoute:
        return SlideRight(page: const RegisterView());

      case Routes.verificationRoute:
        final phoneNumber = settings.arguments;
        return SlideRight(
          page: VerificationView(
            phoneNumber: phoneNumber.toString(),
          ),
        );

      case Routes.homeRoute:
        return SlideRight(page: const HomeView());

      case Routes.qrRoute:
        return SlideRight(page: const QRView());

      case Routes.notificationRoute:
        return SlideRight(page: const NotificationView());

      case Routes.profileRoute:
        return SlideRight(page: const ProfileView());

      case Routes.chargingWalletRoute:
        return SlideRight(page: const ChargingWalletView());

      case Routes.smartCardRoute:
        return SlideRight(page: const SmartCardView());

      case Routes.paySubscriptionsRoute:
        return SlideRight(page: const PaySubscriptions());

      case Routes.transferMoneyRoute:
        return SlideRight(page: const TransferMoneyView());

      case Routes.payBillsRoute:
        return SlideRight(page: const PayBillsScreen());

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
