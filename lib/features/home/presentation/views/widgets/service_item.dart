import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

Widget serviceItem(
  context, {
  required String text,
  required void Function()? onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width / 3.57,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: ColorManager.darkDefaultColor, width: 1),
          ),
          margin: const EdgeInsets.only(right: 3.0),
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/39.0),
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
      ),
    );
