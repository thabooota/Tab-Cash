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
                style: Styles.textStyle32
                    .copyWith(color: ColorManager.darkTextColor),
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
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(64.0),
                    topRight: Radius.circular(64.0),
                  ),
                ),
                elevation: 0.0,
                backgroundColor: ColorManager.darkScaffoldBackgroundColor,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64.0),
                      topRight: Radius.circular(64.0),
                    ),
                    color: ColorManager.darkScaffoldBackgroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "You can contact us by calling customer service at number",
                        style: Styles.textStyle24,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        "198765",
                        style: Styles.textStyle24
                            .copyWith(color: ColorManager.darkDefaultColor),
                      ),
                    ],
                  ),
                ),
              );
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
