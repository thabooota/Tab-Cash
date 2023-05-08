import 'package:flutter/material.dart';
import 'package:smartwallet/features/profile/presentation/views/children_view.dart';
import 'package:smartwallet/features/profile/presentation/views/contact_us_view.dart';
import 'package:smartwallet/features/profile/presentation/views/help_view.dart';
import 'package:smartwallet/features/profile/presentation/views/history_view.dart';
import 'package:smartwallet/features/profile/presentation/views/widgets/create_child.dart';
import 'package:smartwallet/features/service/presentation/views/charging_wallet_service.dart';
import 'package:smartwallet/features/service/presentation/views/smart_card_service.dart';
import 'package:smartwallet/features/service/presentation/views/transfer_money_service.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/pay_bills_screen.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/pay_games.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/pay_installments.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/pay_subscriptions_screen.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_games_body.dart';
import '../../features/authentication/login/presentation/view/change_password.dart';
import '../../features/authentication/register/presentation/views/register_view.dart';
import '../../features/authentication/register/presentation/views/verification_view.dart';
import '../../features/home/presentation/views/home_screen.dart';
import '../../features/notification/presentation/views/notification_screen.dart';
import '../../features/profile/presentation/views/profile_screen.dart';
import '../../features/profile/presentation/views/setting_view.dart';
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
  static const String childrenRoute = '/children';
  static const String addChildRoute = '/addChild';
  static const String historyRoute = '/history';
  static const String settingRoute = '/setting';
  static const String contactUsRoute = '/contactUs';
  static const String helpRoute = '/help';
  static const String transferMoneyRoute = "/transferMoney";
  static const String smartCardRoute = "/smartCard";
  static const String chargingWalletRoute = "/chargingWallet";
  static const String payBillsRoute = '/payBills';
  static const String paySubscriptionsRoute = '/paySubscriptions';
  static const String payGamesRoute = '/payGames';
  static const String payInstallmentsRoute = '/payInstallments';
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

      case Routes.childrenRoute:
        return SlideRight(page: const ChildrenView());

      case Routes.addChildRoute:
        return SlideRight(page: const CreateChild());

      case Routes.historyRoute:
        return SlideRight(page: const HistoryView());

      case Routes.settingRoute:
        return SlideRight(page: const SettingView());

      case Routes.contactUsRoute:
        return SlideRight(page: const ContactUsView());

      case Routes.helpRoute:
        return SlideRight(page: const HelpView());

      case Routes.chargingWalletRoute:
        return SlideRight(page: const ChargingWalletView());

      case Routes.smartCardRoute:
        return SlideRight(page: const SmartCardView());

      case Routes.paySubscriptionsRoute:
        return SlideRight(page: const PaySubscriptions());

      case Routes.transferMoneyRoute:
        return SlideRight(page: const TransferMoneyView());

      case Routes.payInstallmentsRoute:
        return SlideRight(page: const PayInstallmentsView());

      case Routes.payBillsRoute:
        return SlideRight(page: const PayBillsScreen());

      case Routes.payGamesRoute:
        return SlideRight(page: const PayGamesView());
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
