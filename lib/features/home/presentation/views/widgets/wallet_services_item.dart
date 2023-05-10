import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

Widget walletServicesItem({
  required String text,
  required Function() onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: ColorManager.darkScaffoldBackgroundColor,
          border: Border.all(color: ColorManager.darkDefaultColor, width: 1.2),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(vertical: 7.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Styles.textStyle20.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
