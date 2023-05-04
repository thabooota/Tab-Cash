import 'package:flutter/material.dart';
import 'widgets/transfer_money_view_body.dart';

class TransferMoneyView extends StatelessWidget {
  const TransferMoneyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TransferMoneyViewBody(),
    );
  }
}
