import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/styles.dart';

class SmartCardViewBody extends StatelessWidget {
  const SmartCardViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                AssetsManager.card,
                height: MediaQuery.of(context).size.height / 2.38,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 9.2,
                right: MediaQuery.of(context).size.width / 4.2,
                child: Transform.rotate(
                  angle: 150.4,
                  child: const Text(
                    "952",
                    style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600,color: Colors.black),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 8.2,
                left: MediaQuery.of(context).size.width / 7.5,
                child: Text(
                  "EGP 900",
                  style: Styles.textStyle32.copyWith(color: ColorManager.darkDefaultColor),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 15.0,
                left: MediaQuery.of(context).size.width / 6.0,
                child: Text(
                  "5482 7460 3378 7486",
                  style: Styles.textStyle24.copyWith(color: Colors.white),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 40.0,
                right: MediaQuery.of(context).size.width / 5.0,
                child: Text(
                  "04/23",
                  style: Styles.textStyle16.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60.0,
          ),
          Text(
            "The card is accepted for payment on\nany site inside or outside Egypt.",
            style: Styles.textStyle20.copyWith(color: ColorManager.darkTextColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
