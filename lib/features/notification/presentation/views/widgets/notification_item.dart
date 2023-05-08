import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/color_manager.dart';

import '../../../../../core/utils/styles.dart';

Widget notificationItem({
  required String messageText,
  required String messageTime,
  required int operationNumber,
  context
}) => Card(
  elevation: 6.0,
  child: Container(
    padding: const EdgeInsetsDirectional.all(8.0),
    decoration: BoxDecoration(
      color: ColorManager.scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: ColorManager.defaultColor,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Expanded(child: Text(messageText,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold, color: Colors.black),)),
            SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
            Text(messageTime , style: Styles.textStyle16.copyWith(color: Colors.black45),),
          ],
        ),
        const SizedBox(height: 8.0,),
        Text('Operation number:\n $operationNumber', style: Styles.textStyle16.copyWith(color: Colors.black),),
      ],
    ),
  ),
);