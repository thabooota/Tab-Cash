import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

Widget payItem({
  required Function() onTap,
  required Widget widget,
  Color iconColor = ColorManager.darkDefaultColor,
  required String text,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 45.0,
            backgroundColor: ColorManager.darkDefaultColor,
            child: CircleAvatar(
              radius: 43.0,
              backgroundColor: ColorManager.darkDefaultColor,
              child: widget,
            ),
          ),
        ),
        Text(
            text,
        style: Styles.textStyle24.copyWith(fontSize: 20.0),),
      ],
    );


Widget payItem2({
  required Function() onTap,
  required Widget widget,
  Color iconColor = ColorManager.darkDefaultColor,
  required String text,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 26.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(46.0),
                bottomRight: Radius.circular(46.0),
              ),
              color: Colors.transparent,
              border: Border.all(
                width: 2.0,
                color: ColorManager.darkDefaultColor,
              )
            ),
            child: widget,
          ),
        ),
        const SizedBox(height: 8.0,),
        Text(text,style: const TextStyle(color: ColorManager.darkTextColor,fontSize: 22.0,fontWeight: FontWeight.w600),),
      ],
    );


Widget payItem3({
  required Function() onTap,
  required Widget widget,
  Color iconColor = ColorManager.darkDefaultColor,
  required String text,
}) => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: ClipRRect(borderRadius: BorderRadius.circular(22.0),child: widget),
        ),
        const SizedBox(height: 8.0,),
        Text(text,style: const TextStyle(color: ColorManager.darkTextColor,fontSize: 22.0,fontWeight: FontWeight.w600),),
      ],
    );