import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import 'service_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(8.0),
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AssetsManager.logo,
              height: 60.0,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              'WELCOME,\n JOUX!',
              style: Styles.textStyle24.copyWith(
                color: ColorManager.defaultColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 36.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(color: ColorManager.defaultColor, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: Styles.textStyle24,
                ),
                Text(
                  'EGP 650K',
                  style: Styles.textStyle20.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            serviceItem(context, text: "Smart Card"),
            serviceItem(context, text: "Transfer Money"),
            serviceItem(context, text: "Charging Wallet"),
          ],
        ),
      ],
    );
  }
}
