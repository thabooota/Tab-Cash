import 'package:flutter/material.dart';
import 'package:smartwallet/core/widget/app_bar.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_games_body.dart';

class PayGamesView extends StatelessWidget {
  const PayGamesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: 'Pay Games'),
      body: const PayGamesViewBody(),
    );
  }
}
