import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'widgets/home_screen_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: ColorManager.defaultColor,
        backgroundColor: Colors.transparent,
         // buttonBackgroundColor: ColorManager.defaultColor,
          items: const <Widget>[
            Icon(FontAwesomeIcons.house , color: Colors.white),
            Icon(FontAwesomeIcons.qrcode, color: Colors.white,),
            Icon(FontAwesomeIcons.solidBell, color: Colors.white,),
            Icon(FontAwesomeIcons.solidUser, color: Colors.white,),
          ]),
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}
