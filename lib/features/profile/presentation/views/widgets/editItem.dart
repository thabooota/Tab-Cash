import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

Widget editItem(
    context, {
      required String text,
      required String label,
      required IconData icon,
      void Function()? onTap,
    }) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      margin: const EdgeInsets.only(bottom: 24.0),
      width: MediaQuery.of(context).size.width - 32.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.darkDefaultColor,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(22.0), topRight: Radius.circular(22.0)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 25.0,
            color: ColorManager.darkDefaultColor.withOpacity(0.8),
          ),
          Container(
            width: 1.0,
            color: Colors.grey.withOpacity(0.7),
            height: 41.0,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Styles.textStyle20.copyWith(color: ColorManager.darkTextColor),
                ),
              ],
            ),
          ),
          Icon(
            FontAwesomeIcons.penToSquare,
            size: 18.0,
            color: ColorManager.darkDefaultColor.withOpacity(0.8),
          ),
        ],
      ),
    );
