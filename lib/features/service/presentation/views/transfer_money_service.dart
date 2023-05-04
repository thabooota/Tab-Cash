import 'package:flutter/material.dart';
import '../../../../core/widget/app_bar.dart';
import 'widgets/transfer_money_view_body.dart';

class TransferMoneyView extends StatelessWidget {
  const TransferMoneyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,text: "Transfer Money"),
      body: const SafeArea(child: TransferMoneyViewBody()),
    );
  }
}
