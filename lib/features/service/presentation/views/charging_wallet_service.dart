import 'package:flutter/material.dart';
import '../../../../core/widget/app_bar.dart';
import 'widgets/charging_wallet_view_body.dart';

class ChargingWalletView extends StatelessWidget {
  const ChargingWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,text: "Charging Wallet"),
      body: const ChargingWalletViewBody(),
    );
  }
}
