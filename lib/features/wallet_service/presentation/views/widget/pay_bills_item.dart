import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';

Widget payBillsItem({
  required Function() onTap,
  required IconData icon,
}) =>
    CircleAvatar(
      radius: 45.0,
      backgroundColor: ColorManager.defaultColor,
      child: CircleAvatar(
        radius: 43.0,
        backgroundColor: Colors.white,
        child: IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            size: 40,
            color: ColorManager.defaultColor,
          ),
        ),
      ),
    );
