import 'package:flutter/material.dart';
import 'color_manager.dart';

ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: ColorManager.darkScaffoldBackgroundColor,
  useMaterial3: true,
  fontFamily: 'Cairo',
);

ThemeData lightAppTheme = ThemeData(
  scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
  useMaterial3: true,
  fontFamily: 'Cairo',
);
