import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';
import 'package:smartwallet/core/widget/custom_container.dart';
import 'package:smartwallet/features/home/peresntion/views/widgets/custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Row(
              children: [
                SvgPicture.asset(
                  AssetsManager.logo,
                  height: 64.0,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                    'WELCOME ,JOUX !',
                style: Styles.textStyle32.copyWith(
                  color: ColorManager.defaultColor,
                ),
                ),
              ],
            ),
          const SizedBox(
            height: 25,
          ),
          CustomContainer.customContainer(
              widget: Row(
                children:  [
                  const Text(
                    'Balance' ,
                    style: Styles.textStyle24,
                  ),
                  const Spacer(),
                  Text(
                      'EGP 650K',
                    style: Styles.textStyle20.copyWith(color: Colors.black),
                  ),
                ],
              ),
              radius: 24, height: MediaQuery.of(context).size.height * 0.1, padding: 15.0,
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              CustomListView.item(text: 'Transfer\nMoney', onTap: (){}),
              const Spacer(),
              CustomListView.item(text: 'Charging\nWallet', onTap: () {}),
              const Spacer(),
              CustomListView.item(text: 'Smart\nCard', onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
