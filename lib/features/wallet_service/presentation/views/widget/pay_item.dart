import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

Widget payItem({
  required Function() onTap,
  required Widget widget,
  Color iconColor = ColorManager.defaultColor,
  required String text,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 45.0,
            backgroundColor: ColorManager.defaultColor,
            child: CircleAvatar(
              radius: 43.0,
              backgroundColor: Colors.white,
              child: widget,
            ),
          ),
        ),
        Text(
            text,
        style: Styles.textStyle24.copyWith(fontSize: 20.0),),
      ],
    );
