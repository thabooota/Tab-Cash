import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/custom_bottom_sheet.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_item.dart';

class PayGamesViewBody extends StatelessWidget {
  const PayGamesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              payItem(onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => bottomSheet(context),);
              },
                widget: SvgPicture.asset(
                  AssetsManager.pubg,
                ), text: 'Pubg',
              ),
              const Spacer(),
              payItem(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) => bottomSheet(context),);
                  },
                  widget: SvgPicture.asset(AssetsManager.freeFire),
                  text: 'Free Fire'),
              const Spacer(),
              payItem(onTap: () {
                showModalBottomSheet(context: context, builder: (context) => bottomSheet(context),);
              }, widget: SvgPicture.asset(AssetsManager.fifa), text: 'FIFA')
            ],
          ),
          const SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              children: [
                payItem(
                    onTap: () {
                      showModalBottomSheet(context: context, builder: (context) => bottomSheet(context),);
                    },
                    widget: SvgPicture.asset(AssetsManager.freeFire),
                    text: 'LOL'),
                const Spacer(),
                payItem(onTap: () {
                  showModalBottomSheet(context: context, builder: (context) => bottomSheet(context),);
                }, widget: SvgPicture.asset(AssetsManager.fifa), text: 'Fortnite')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
