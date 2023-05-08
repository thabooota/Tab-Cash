import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_manager.dart';

class LogoView extends StatelessWidget {
  const LogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 22,
        ),
        SvgPicture.asset(
          AssetsManager.logo,
          height: 220.0,
        ),
         SizedBox(
           height: MediaQuery.of(context).size.height / 26,
         ),
      ],
    );
  }
}
