import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

Widget walletServicesItem({
  required String text,
  required Function onTap
}) => InkWell(
  onTap: onTap(),
  child: Container(
    height: 60,
    width: double.infinity,
    decoration:  BoxDecoration(
      color: ColorManager.scaffoldBackgroundColor,
      border: Border.all(
        color: ColorManager.defaultColor,
        width: 1.2
      ),
      borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              text,
              style: Styles.textStyle20.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios
            ),
          ],
        ),
      ),
      ),
);