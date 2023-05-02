import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/styles.dart';

Widget customTextField({
  required bool obscure,
  required TextEditingController controller,
  required String text,
  IconButton? suffixIcon,
}) =>
    TextField(
      obscureText: obscure,
      maxLines: 1,
      controller: controller,
      style: Styles.textStyle16,
      autofocus: true,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
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
    borderSide: const BorderSide(
      color: Colors.black,
    ),
  );
}
