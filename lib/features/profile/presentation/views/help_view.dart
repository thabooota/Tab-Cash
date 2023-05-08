import 'package:flutter/material.dart';
import 'package:smartwallet/core/widget/app_bar.dart';

import 'widgets/help_view_body.dart';

class HelpView extends StatelessWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: "Help",centerTitle: true),
      body: HelpViewBody(),
    );
  }
}
