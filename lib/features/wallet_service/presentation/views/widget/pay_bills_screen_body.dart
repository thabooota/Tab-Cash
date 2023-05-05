import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/custom_bottom_sheet.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_bills_item.dart';

class PayBillsScreenBody extends StatelessWidget {
  const PayBillsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
      child: Row(
        children: [
          payBillsItem(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => bottomSheet(context, text: '   phone number'),
                );
              },
              icon: FontAwesomeIcons.droplet),
          const Spacer(),
          payBillsItem(onTap: () {}, icon: FontAwesomeIcons.boltLightning),
          const Spacer(),
          payBillsItem(onTap: () {}, icon: FontAwesomeIcons.fireBurner),
        ],
      ),
    );
  }
}
