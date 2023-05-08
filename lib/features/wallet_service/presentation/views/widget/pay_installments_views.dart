import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/custom_bottom_sheet.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_item.dart';

class PayInstallmentsBody extends StatelessWidget {
  const PayInstallmentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            payItem(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => bottomSheet(context),);
                },
                widget: SvgPicture.asset(AssetsManager.beTech),
                text: 'B.TECH'),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            payItem(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => bottomSheet(context),);
                },
                widget: SvgPicture.asset(AssetsManager.raia), text: 'RA\'A'),
          ],
      ),
    );
  }
}
