import 'package:flutter/material.dart';
import '../../../../../core/utils/app_router.dart';
import 'service_item.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        serviceItem(
          context,
          text: "Smart\nCard",
          onTap: () {
            Navigator.pushNamed(context, Routes.smartCardRoute);
          },
        ),
        serviceItem(
          context,
          text: "Transfer\nMoney",
          onTap: () {
            Navigator.pushNamed(context, Routes.transferMoneyRoute);
          },
        ),
        serviceItem(
          context,
          text: "Charging\nWallet",
          onTap: () {
            Navigator.pushNamed(context, Routes.chargingWalletRoute);
          },
        ),
      ],
    );
  }
}
