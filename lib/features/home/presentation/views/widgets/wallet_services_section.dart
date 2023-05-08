import 'package:flutter/material.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import 'wallet_services_item.dart';

class WalletServiceSection extends StatelessWidget {
  const WalletServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wallet services',
          style: Styles.textStyle32.copyWith(fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 7.5,
        ),
        walletServicesItem(
          text: 'Pay Bills',
          onTap: () {
            Navigator.pushNamed(context, Routes.payBillsRoute);
          },
        ),
        walletServicesItem(text: 'Pay Subscriptions', onTap: () {
          Navigator.pushNamed(
              context, Routes.paySubscriptionsRoute
          );
        }),
        walletServicesItem(text: 'Pay Games', onTap: () {}),
        walletServicesItem(text: 'Pay Installments', onTap: () {}),
      ],
    );
  }
}
