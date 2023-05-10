import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';

class HelpViewBody extends StatelessWidget {
  const HelpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView.builder(
        itemBuilder: (context, index) => questionItem(),
        itemCount: 4,
      ),
    );
  }
}

Widget questionItem() => Card(
      elevation: 2.0,
      color: ColorManager.darkScaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: RichText(
          text: TextSpan(
              text: "Lorem ipsum dolor sit?\n",
              style: const TextStyle(color: ColorManager.darkDefaultColor,fontWeight: FontWeight.w700,fontSize: 24.0),
              children: [
                TextSpan(
                  text:
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.",
                  style:
                      Styles.textStyle24.copyWith(fontWeight: FontWeight.w400),
                ),
              ]),
        ),
      ),
    );
