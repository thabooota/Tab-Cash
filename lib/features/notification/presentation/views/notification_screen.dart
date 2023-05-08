import 'package:flutter/material.dart';

import 'widgets/notification_view_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotificationViewBody(),
    );
  }
}
