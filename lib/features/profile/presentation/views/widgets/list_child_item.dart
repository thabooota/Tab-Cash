
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

Widget listChildrenItem(context) => InkWell(
  onTap: () {
    Navigator.pushNamed(context, Routes.childInfoRoute);
  },
  child: Card(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(52.0),
          topLeft: Radius.circular(52.0)),
    ),
    color: Colors.white,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width - 32.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.darkDefaultColor,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(52.0),
            topLeft: Radius.circular(52.0)),
      ),
      child: Column(
        children: [
          const Text(
            "Mohammed Ahmed",
            style: Styles.textStyle24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "Phone: 01227559261",
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                "Balane: 200.0",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);