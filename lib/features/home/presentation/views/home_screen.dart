import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/features/qr/presentation/views/qr_screen.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../notification/presentation/views/notification_screen.dart';
import '../../../profile/presentation/views/profile_screen.dart';
import 'widgets/home_screen_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List<Widget> screens = [
      const HomeView(),
      const QRView(),
      const NotificationView(),
      const ProfileView(),
    ];

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: ColorManager.defaultColor,
        backgroundColor: Colors.transparent,
        height: 60,
        items: const [
          Icon(FontAwesomeIcons.house, color: Colors.white),
          Icon(
            FontAwesomeIcons.qrcode,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.solidBell,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.solidUser,
            color: Colors.white,
          ),
        ],
        index: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        animationCurve: Curves.linearToEaseOut,
      ),
      body: screens[currentIndex],
    );
  }
}
