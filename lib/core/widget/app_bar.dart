import 'package:flutter/material.dart';
import '../utils/color_manager.dart';

AppBar appBar(context, {required String text}) => AppBar(
      elevation: 0.0,
      backgroundColor: ColorManager.scaffoldBackgroundColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontFamily: "Cairo",
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
