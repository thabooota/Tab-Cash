import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';

Widget payBillsItem({
  required Function() onTap,
  required IconData icon,
  Color iconColor = ColorManager.defaultColor,
}) =>
    GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 45.0,
        backgroundColor: ColorManager.defaultColor,
        child: CircleAvatar(
          radius: 43.0,
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            size: 45,
            color: iconColor,
          ),
        ),
      ),
    );
