import 'package:flutter/material.dart';

import '../../../../../core/utils/app_router.dart';
import 'service_item.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        serviceItem(
          context,
          text: "Smart Card",
          onTap: () {
            Navigator.pushNamed(context, Routes.smartCardRoute);
          },
        ),
        serviceItem(
          context,
          text: "Transfer Money",
          onTap: () {
            Navigator.pushNamed(context, Routes.transferMoneyRoute);
          },
        ),
        serviceItem(
          context,
          text: "Charging Wallet",
          onTap: () {
            Navigator.pushNamed(context, Routes.chargingWalletRoute);
          },
        ),
      ],
    );
  }
}
