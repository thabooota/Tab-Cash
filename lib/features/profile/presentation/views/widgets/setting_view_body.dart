import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

import 'appearance.dart';
import 'appearance_section.dart';
import 'edit_section.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: const [
          AppearanceSection(),
          SizedBox(
            height: 60.0,
          ),
          EditSection()
        ],
      ),
    );
  }
}
