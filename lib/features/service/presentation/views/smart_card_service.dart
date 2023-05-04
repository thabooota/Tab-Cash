import 'package:flutter/material.dart';
import '../../../../core/widget/app_bar.dart';
import 'widgets/smart_card_view_body.dart';

class SmartCardView extends StatelessWidget {
  const SmartCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(context,text: "Smart Card"),
      body: const SmartCardViewBody(),
    );
  }
}
