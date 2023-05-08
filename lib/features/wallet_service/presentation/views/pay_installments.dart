import 'package:flutter/material.dart';
import 'package:smartwallet/core/widget/app_bar.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_installments_views.dart';

class PayInstallmentsView extends StatelessWidget {
  const PayInstallmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: 'Pay Installments'),
      body: const PayInstallmentsBody(),
    );
  }
}
