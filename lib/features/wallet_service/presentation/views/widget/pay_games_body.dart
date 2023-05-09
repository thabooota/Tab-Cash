import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/custom_bottom_sheet.dart';
import 'package:smartwallet/features/wallet_service/presentation/views/widget/pay_item.dart';

class PayGamesViewBody extends StatelessWidget {
  const PayGamesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      SvgPicture.asset(
        AssetsManager.pubg,
        height: 100.0,
        fit: BoxFit.cover,
      ),
      SvgPicture.asset(
        AssetsManager.freeFire,
        height: 100.0,
        width: 50.0,
      ),
      Image.asset(
        AssetsManager.fifa,
        height: 100.0,
        width: 140.0,
      ),
      SvgPicture.asset(
        AssetsManager.lol,
        height: 100.0,
        width: 50.0,
      ),
      SvgPicture.asset(
        AssetsManager.valorant,
        height: 100.0,
        width: 100.0,
      ),
      SvgPicture.asset(
        AssetsManager.fortnite,
        height: 100.0,
        width: 80.0,
      ),
    ];

    List<String> names = [
      "Pubg",
      "Free Fire",
      "FIFA",
      "LOL",
      "Valorant",
      "Fortnite",
    ];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: MediaQuery.of(context).size.height / 750,
            // crossAxisSpacing: 0,
            mainAxisSpacing: 20,
          ),
          itemCount: widgets.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: payItem3(
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
}
