import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/custom_bottom_sheet.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_item.dart';

class PayBillsScreenBody extends StatelessWidget {
  const PayBillsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      const Icon(FontAwesomeIcons.droplet,
          size: 50.0, color: Color(0xff699BF7)),
      const Icon(FontAwesomeIcons.boltLightning,
          size: 50.0, color: Colors.yellow),
      SvgPicture.asset(AssetsManager.gas, height: 50.0),
    ];
    List<String> names = ["Water", "Electricity", "Gas"];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 8.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: MediaQuery.of(context).size.height / 750,
            // crossAxisSpacing: 0,
            mainAxisSpacing: 20,
          ),
          itemCount: 3,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: payItem2(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => bottomSheet(context),
                    );
                  },
                  widget: widgets[index],
                  text: names[index]),
            );
          }),
    );
  }

  // Widget item(context) => Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         payItem2(
  //           widget: const Icon(FontAwesomeIcons.droplet,
  //               size: 50.0, color: Color(0xff699BF7)),
  //           onTap: () {
  //             showModalBottomSheet(
  //               context: context,
  //               builder: (context) => bottomSheet(context),
  //             );
  //           },
  //           text: 'Water',
  //         ),
  //         payItem2(
  //           onTap: () {
  //             showModalBottomSheet(
  //               context: context,
  //               builder: (context) => bottomSheet(context),
  //             );
  //           },
  //           widget: const Icon(FontAwesomeIcons.boltLightning,
  //               size: 50.0, color: Colors.yellow),
  //           text: 'Electricity',
  //         ),
  //         payItem(
  //             onTap: () {
  //               showModalBottomSheet(
  //                 context: context,
  //                 builder: (context) => bottomSheet(context),
  //               );
  //             },
  //             widget: SvgPicture.asset(AssetsManager.gas),
  //             text: 'Gas'),
  //       ],
  //     );
}
