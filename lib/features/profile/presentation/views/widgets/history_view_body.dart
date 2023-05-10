import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class HistoryViewBody extends StatelessWidget {
  const HistoryViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>
            historyItem(serviceName: '', serviceNum: '', invoice: 0.0),
        separatorBuilder: (context, index) => const Divider(
              endIndent: 25.0,
              indent: 25.0,
              color: Colors.grey,
            ),
        itemCount: 4);
  }

  Widget historyItem(
          {required String serviceName,
          required String serviceNum,
          required double invoice}) =>
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.moneyBillTransfer,
              color: ColorManager.darkDefaultColor,
            ),
            const SizedBox(width: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Service Name:$serviceName',
                  style: Styles.textStyle16.copyWith(color: ColorManager.darkTextColor),
                ),
                Text(
                  'Service Number :$serviceNum ',
                  style: Styles.textStyle16.copyWith(color: ColorManager.darkTextColor),
                ),
                Text(
                  '18 May 2023  - 2:35 pm',
                  style: Styles.textStyle16.copyWith(color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '+ 3200EGP',
              style: Styles.textStyle16.copyWith(color: Colors.green),
            ),
          ],
        ),
      );
}
