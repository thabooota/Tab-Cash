import 'package:flutter/material.dart';
import 'widgets/charging_wallet_view_body.dart';

class ChargingWalletView extends StatelessWidget {
  const ChargingWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChargingWalletViewBody(),
    );
  }
}
