import 'package:flutter/material.dart';
import 'package:smartwallet/core/widget/app_bar.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_subscriptions_body.dart';

class PaySubscriptions extends StatelessWidget {
  const PaySubscriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: 'Pay Subscriptions'),
      body: const PaySubscriptionsBody(),
    );
  }
}
