import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../manager/app_cubit.dart';
import '../manager/app_state.dart';
import '../../../../core/utils/color_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            backgroundColor: ColorManager.darkScaffoldBackgroundColor,
            bottomNavigationBar: CurvedNavigationBar(
              color: ColorManager.darkDefaultColor,
              backgroundColor: Colors.transparent,
              height: 60,
              items: const [
                Icon(FontAwesomeIcons.house, color: ColorManager.darkTextColor),
                Icon(FontAwesomeIcons.qrcode, color: ColorManager.darkTextColor),
                Icon(FontAwesomeIcons.solidBell, color: ColorManager.darkTextColor),
                Icon(FontAwesomeIcons.solidUser, color: ColorManager.darkTextColor),
              ],
              index: cubit.currentScreen,
              onTap: (value) {
                cubit.changeBottomNavBar(value);
                cubit.currentScreen = value;
              },
              animationCurve: Curves.linearToEaseOut,
            ),
            body: cubit.screens[cubit.currentScreen],
          );
        },
      ),
    );
  }
}
