import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widget/shape_print_profile.dart';
import 'row_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              painter: MyPainter(),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width, height: 265),
            ),
            Positioned(
              bottom: 140.0,
              child: Text(
                "Mohammed",
                style: Styles.textStyle32.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
        rowItem(
            text: "Children",
            icon: FontAwesomeIcons.children,
            onTap: () {
              Navigator.pushNamed(context, Routes.childrenRoute);
            }),
        rowItem(
            text: "History",
            icon: FontAwesomeIcons.clockRotateLeft,
            onTap: () {
              Navigator.pushNamed(context, Routes.historyRoute);
            }),
        rowItem(
            text: "Setting",
            icon: FontAwesomeIcons.gear,
            onTap: () {
              Navigator.pushNamed(context, Routes.settingRoute);
            }),
        rowItem(
            text: "Contact Us",
            icon: FontAwesomeIcons.phoneVolume,
            onTap: () {
              Navigator.pushNamed(context, Routes.contactUsRoute);
            }),
        rowItem(
            text: "Help",
            icon: FontAwesomeIcons.circleQuestion,
            onTap: () {
              Navigator.pushNamed(context, Routes.helpRoute);
            }),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 10.0),
          child: CustomButton.customTextButton(
              text: "Logout",
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginRoute);
              }),
        ),
      ],
    );
  }
}
