import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

class CustomButton {
  static Widget customTextButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: ColorManager.defaultColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12.0),
          ),
          child: Text(
            text,
            style: Styles.textStyle20,
          ),
        ),
      );
}
