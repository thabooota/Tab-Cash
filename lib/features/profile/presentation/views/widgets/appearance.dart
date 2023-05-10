import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/color_manager.dart';

Widget appearance({
  required Color color,
  required Color bgColor,
  required Color textColor,
  required bool active,
}) =>
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12.0),
            border: active
                ? Border.all(width: 2.0, color: ColorManager.darkDefaultColor)
                : Border.all(
                    width: 0.0,
                  ),
          ),
          padding: const EdgeInsets.only(top: 27.0, left: 37.0),
          child: Container(
            padding: const EdgeInsets.only(
                bottom: 40.0, right: 50.0, top: 10.0, left: 10.0),
            decoration: BoxDecoration(
              color: color,
              border: active
                  ? Border.all(width: 2.0, color: ColorManager.darkDefaultColor)
                  : Border.all(
                      width: 0.0,
                    ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              "Aa",
              style: TextStyle(
                  color: textColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        if (active)
          Container(
            child: Icon(FontAwesomeIcons.check),
            padding: EdgeInsets.all(3.0),
            color: ColorManager.darkDefaultColor,
          ),
      ],
    );
