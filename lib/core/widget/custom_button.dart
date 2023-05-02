import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/styles.dart';

Widget customButton({
  required String text,
  required VoidCallback onPressed,
}) =>
    SizedBox(
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xffD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle20,
          )),
    );
