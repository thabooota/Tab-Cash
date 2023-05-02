import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

class CustomTextField {
  static Widget customTextFormField({
    required TextEditingController controller,
    required String text,
    required TextInputType inputType,
    required FormFieldValidator validation,
    IconButton? suffixIcon,
    IconData? prefixIcon,
    bool obscure = false,
  }) {
    return TextFormField(
      obscureText: obscure,
      maxLines: 1,
      controller: controller,
      style: Styles.textStyle16,
      keyboardType: inputType,
      validator: validation,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
        suffixIconColor: ColorManager.defaultColor,
        prefixIconColor: ColorManager.defaultColor,
        contentPadding: const EdgeInsetsDirectional.all(10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: ColorManager.defaultColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: ColorManager.defaultColor,
          ),
        ),
        hintText: text,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}

