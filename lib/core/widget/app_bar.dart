import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/color_manager.dart';

AppBar appBar(
  context, {
  required String text,
      Color? titleColor,
  bool centerTitle = false,
      Color bgColor = ColorManager.scaffoldBackgroundColor,
      List<Widget>? actions
    }) =>
    AppBar(
      elevation: 0.0,
      backgroundColor: bgColor,
      actions: actions,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: "Cairo",
          fontSize: 26.0,
          color: titleColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorManager.scaffoldBackgroundColor,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
      ),
      centerTitle: centerTitle,
    );
