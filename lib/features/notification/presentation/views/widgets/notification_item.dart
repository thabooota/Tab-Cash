import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

Widget notificationItem(
  context, {
  required String messageText,
  required String messageTime,
  required int operationNumber,
  required bool readIt,
}) =>
    Stack(
      alignment: Alignment.topRight,
      children: [
        Card(
          elevation: 1.5,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
               topLeft:  Radius.circular(40.0),
              ),
              side: BorderSide(
                color: ColorManager.darkDefaultColor,
                width: 0.8,
              )),
          child: Container(
            padding: const EdgeInsetsDirectional.all(14.0),
            decoration: BoxDecoration(
              color:
                  readIt ? ColorManager.darkScaffoldBackgroundColor : ColorManager.gray2,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
                topLeft:  Radius.circular(40.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Text(
                      messageText,
                      style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.bold, color: readIt ? ColorManager.darkTextColor : Colors.black,),
                    )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Text(
                      messageTime,
                      textAlign: TextAlign.end,
                      style: Styles.textStyle16.copyWith(
                          color: readIt ? ColorManager.darkTextColor : Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Operation number: $operationNumber',
                  style: Styles.textStyle16.copyWith(color: readIt ? ColorManager.darkTextColor : Colors.black,),
                ),
              ],
            ),
          ),
        ),
        if (!readIt)
          const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
              FontAwesomeIcons.solidBell,
              color: ColorManager.darkDefaultColor,
            ),
          )
      ],
    );