import 'package:flutter/material.dart';
import '../../../../core/widget/app_bar.dart';
import 'widgets/setting_view_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: "Setting",centerTitle: true),
      body: const SettingViewBody(),
    );
  }
}
