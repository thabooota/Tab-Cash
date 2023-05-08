import 'package:flutter/material.dart';
import '../../../../core/widget/app_bar.dart';
import 'widgets/history_view_body.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: "History",centerTitle: true),
      body: const HistoryViewBody(),
    );
  }
}
