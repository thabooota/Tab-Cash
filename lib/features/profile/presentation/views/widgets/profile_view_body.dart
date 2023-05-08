import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widget/shape_print_profile.dart';

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
        const SizedBox(
          height: 52.0,
        ),
        rowItem(text: "Children", icon: FontAwesomeIcons.children),
        rowItem(text: "History", icon: FontAwesomeIcons.clockRotateLeft),
        rowItem(text: "Setting", icon: FontAwesomeIcons.gear),
        rowItem(text: "Contact Us", icon: FontAwesomeIcons.phoneVolume),
        rowItem(text: "Children", icon: FontAwesomeIcons.circleQuestion),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 32.0),
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

Widget rowItem({
  required String text,
  required IconData icon,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: ColorManager.defaultColor,
              ),
              const SizedBox(
                width: 22.0,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 22.0),
              ),
            ],
          ),
          Container(
            height: 0.5,
            color: Colors.grey.withOpacity(0.4),
            margin:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          ),
        ],
      ),
    );
