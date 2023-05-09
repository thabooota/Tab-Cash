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
    List<Widget> widgets = [
      const Icon(
        FontAwesomeIcons.bowlingBall,
        size: 45.0,
        color: ColorManager.defaultColor,
      ),
      Transform.rotate(
        angle: 150,
        child: const Icon(
          FontAwesomeIcons.dumbbell,
          size: 40.0,
          color: ColorManager.defaultColor,
        ),
      ),
      SvgPicture.asset(
        AssetsManager.spotify,
        height: 50.0,
      ),
      SvgPicture.asset(
        AssetsManager.netflix,
        height: 50.0,
      ),
      Image.asset(
        AssetsManager.watchIt,
        height: 50.0,
        width: 50.0,
        fit: BoxFit.contain,
      ),
    ];
    List<String> names = ["Club", "Gym", "Spotify", "Netflix", "Watch It"];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: MediaQuery.of(context).size.height / 750,
            // crossAxisSpacing: 0,
            mainAxisSpacing: 20,
          ),
          itemCount: names.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: payItem2(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => bottomSheet(context),
                    );
                  },
                  widget: widgets[index],
                  text: names[index]),
            );
          }),
    );
  }

  Widget paySubscriptionItem(context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              children: [
                payItem(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => bottomSheet(context),
                    );
                  },
                  widget: const Icon(
                    FontAwesomeIcons.bowlingBall,
                    size: 45.0,
                    color: ColorManager.defaultColor,
                  ),
                  text: 'Club',
                ),
                const Spacer(),
                payItem(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => bottomSheet(context),
                      );
                    },
                    widget: Transform.rotate(
                      angle: 150,
                      child: const Icon(
                        FontAwesomeIcons.dumbbell,
                        size: 40.0,
                        color: ColorManager.defaultColor,
                      ),
                    ),
                    text: 'GYM'),
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
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => bottomSheet(context));
                  },
                  widget: SvgPicture.asset(AssetsManager.spotify),
                  text: 'Spotify'),
              const Spacer(),
              payItem(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => bottomSheet(context));
                },
                widget: SvgPicture.asset(AssetsManager.netflix),
                text: 'Netflix',
              ),
              const Spacer(),
              payItem(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => bottomSheet(context),
                  );
                },
                widget: SvgPicture.asset(AssetsManager.watchIt),
                text: 'watch It',
              ),
            ],
          ),
        ],
      );
}
