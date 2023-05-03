import 'package:flutter/material.dart';
import '../utils/color_manager.dart';

class CustomContainer {
  static Widget customContainer({
  required Widget widget,
  required double radius,
  required double height,
    required double padding,
    double ? width,
})
  {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
            color: ColorManager.defaultColor,
            width: 1
        ),
      ),
      child: Padding(
        padding:   EdgeInsets.symmetric(vertical: padding, horizontal: 8.0),
        child: widget,
        ),
    );
  }
}
