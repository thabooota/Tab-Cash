import 'package:flutter/material.dart';
import '../../../../core/widget/app_bar.dart';
import 'widget/pay_bills_screen_body.dart';

class PayBillsScreen extends StatelessWidget {
  const PayBillsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(context, text: 'Pay Bills'),
      body: const PayBillsScreenBody(),
    );
  }
}
