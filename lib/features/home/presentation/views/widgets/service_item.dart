import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

Widget serviceItem(context, {required String text}) => Card(
      elevation: 3.0,
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.4,
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: ColorManager.defaultColor, width: 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: Styles.textStyle16.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
    );
