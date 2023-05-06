import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          payBillsItem(
            icon: FontAwesomeIcons.droplet,
            iconColor: const Color(0xff699BF7),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => bottomSheet(context),
              );
            },
          ),
          payBillsItem(
              onTap: () {},
              icon: FontAwesomeIcons.boltLightning,
              iconColor: Colors.yellow),
          payBillsItem(
              onTap: () {},
              icon: FontAwesomeIcons.gasPump,
              iconColor: Colors.redAccent),
        ],
      ),
    );
  }
}
