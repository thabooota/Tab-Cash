import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/custom_bottom_sheet.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_bills_item.dart';

class PayBillsScreenBody extends StatelessWidget {
  const PayBillsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          payItem(
            widget:const Icon(FontAwesomeIcons.droplet,
            size: 40.0,
            color: Color(0xff699BF7)),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => bottomSheet(context),
              );
            },
          ),
          payItem(
              onTap: () {showModalBottomSheet(
                context: context,
                builder: (context) => bottomSheet(context),
              );},
            widget:const Icon(FontAwesomeIcons.boltLightning,
                size: 40.0,
                color: Colors.yellow),),
          payItem(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => bottomSheet(context),
                );
              },
            widget: SvgPicture.asset(AssetsManager.fire)),
        ],
      ),
    );
  }
}
