import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widget/custom_container.dart';

class CustomListView {
  static Widget item({
    required String text,
    required Function onTap,
  })
  {
    return InkWell(
      onTap: onTap(),
      child: Card(
        elevation: 4.0,
        color: ColorManager.scaffoldBackgroundColor,
        child: CustomContainer.customContainer(
            widget: Row(
              children: [
                Text(
                  text,
                  style: Styles.textStyle16.copyWith(
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
            radius: 10,
            height: 100,
            width: 104, padding: 8.0,
        ),
      ),
    );
  }
}
