import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';

Widget rowItem({
  required String text,
  required IconData icon,
  required void Function() onTap,
}) =>
    Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Row(
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
          ),
        ),
        Container(
          height: 0.5,
          color: Colors.grey.withOpacity(0.4),
        ),
      ],
    );
