import 'package:flutter/material.dart';

import 'color_manager.dart';

abstract class Styles {
  static const textStyle32 = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const textStyle16 = TextStyle(
    color: ColorManager.darkDefaultColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const textStyle20 = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const textStyle24 = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
