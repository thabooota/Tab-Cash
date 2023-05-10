import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import '../utils/styles.dart';

Widget labelText({required String text}) => Container(
      margin: const EdgeInsets.only(top: 15.0, bottom: 10.0),
      child: Text(
        '  $text',
        style: Styles.textStyle20
            .copyWith(color: ColorManager.darkTextColor, fontWeight: FontWeight.normal),
      ),
    );
