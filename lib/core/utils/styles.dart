import 'package:flutter/material.dart';

import 'color_manager.dart';

abstract class Styles {
  static const textStyle32 = TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const textStyle16 = TextStyle(
    color: ColorManager.defaultColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const textStyle20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
