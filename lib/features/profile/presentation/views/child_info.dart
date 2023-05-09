import 'package:flutter/material.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widget/app_bar.dart';

import 'widgets/child_info_body.dart';

class ChildInfo extends StatelessWidget {
  const ChildInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: "Mohammed", centerTitle: true, actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            ),
            child: const Text(
              "Edit",
              style: TextStyle(color: ColorManager.defaultColor, fontSize: 22.0),
            ),
          ),
        )
      ]),
      body: const ChildInfoBody(),
    );
  }
}
