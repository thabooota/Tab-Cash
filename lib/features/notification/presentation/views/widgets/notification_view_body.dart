import 'package:flutter/material.dart';
import 'package:smartwallet/features/notification/presentation/views/widgets/notification_item.dart';

import '../../../../../../core/utils/styles.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Notification',
                style: Styles.textStyle32),
            const SizedBox(height: 20.0,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => notificationItem(
                    context: context,
                      messageText: 'Your current wallet balance is 28900.00 EGP.',
                      messageTime: '01-05-23\n22:39',
                      operationNumber: 003398359501),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15.0,
                      ),
                  itemCount: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
