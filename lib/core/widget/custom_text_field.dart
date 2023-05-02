import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

Widget customTextField({
  required bool obscure,
  required TextEditingController controller,
  required String text,
  IconButton? suffixIcon,
  IconData ? prefixIcon,
}) =>
    TextField(
      obscureText: obscure,
      maxLines: 1,
      controller: controller,
      style: Styles.textStyle16,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
        suffixIconColor: ColorManager.defaultColor,
        prefixIconColor: ColorManager.defaultColor,
        contentPadding: const EdgeInsetsDirectional.all(10),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: text,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide:  const BorderSide(
      color: ColorManager.defaultColor,
    ),
  );
}
