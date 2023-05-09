import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/custom_bottom_sheet.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_item.dart';

class PaySubscriptionsBody extends StatelessWidget {
  const PaySubscriptionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              children: [
                payItem(
                    onTap: () {
                      showModalBottomSheet(context: context,
                          builder: (context) => bottomSheet(context),);
                    },
                    widget: const Icon(
                      FontAwesomeIcons.bowlingBall,
                      size: 45.0,
                      color: ColorManager.defaultColor,
                    ), text: 'Club',
                ),
                const Spacer(),
                payItem(
                    onTap: () {
                      showModalBottomSheet(context: context, builder: (context) => bottomSheet(context),);
                    },
                    widget: Transform.rotate(
                      angle: 150,
                      child: const Icon(
                          FontAwesomeIcons.dumbbell,
                          size: 40.0,
                        color: ColorManager.defaultColor,
                      ),
                    ), text: 'GYM'),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              payItem(
                  onTap: () {
                    showModalBottomSheet(context: context, builder:(context) => bottomSheet(context));
                  },
                  widget: SvgPicture.asset(AssetsManager.spotify), text: 'Spotify'
                  ),
              const Spacer(),
              payItem(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) => bottomSheet(context));
                  },
                  widget: SvgPicture.asset(
                      AssetsManager.netflix), text: 'Netflix',
              ),
              const Spacer(),
              payItem(
                  onTap: () {
                    showModalBottomSheet(context: context, 
                        builder: (context) => bottomSheet(context),);
                  },
                  widget: SvgPicture.asset(AssetsManager.watchIt), text: 'watch It',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
