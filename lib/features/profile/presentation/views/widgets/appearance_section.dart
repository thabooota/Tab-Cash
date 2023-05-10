import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';

import 'appearance.dart';

class AppearanceSection extends StatelessWidget {
  const AppearanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Appearance",
          style: TextStyle(
              color: ColorManager.darkTextColor,
              fontWeight: FontWeight.w600,
              fontSize: 22.0),
        ),
        Container(
          height: 0.8,
          color: Colors.grey,
          margin: const EdgeInsets.only(top: 8.0, bottom: 16.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            appearance(bgColor: Colors.grey.withOpacity(0.9), color: Colors.white, textColor: Colors.black, active: false),
            appearance(bgColor: Color(0xff454545), color: Color(0xff161616),textColor: Colors.white, active: true),
          ],
        ),
      ],
    );
  }
}
