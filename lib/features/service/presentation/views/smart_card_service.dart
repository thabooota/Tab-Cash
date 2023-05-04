import 'package:flutter/material.dart';
import 'widgets/smart_card_view_body.dart';

class SmartCardView extends StatelessWidget {
  const SmartCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SmartCardViewBody(),
    );
  }
}
