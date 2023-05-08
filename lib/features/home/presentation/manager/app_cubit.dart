import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartwallet/features/home/presentation/manager/app_state.dart';
import '../../../notification/presentation/views/notification_screen.dart';
import '../../../profile/presentation/views/profile_screen.dart';
import '../../../qr/presentation/views/qr_screen.dart';
import '../views/widgets/home_screen_body.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialAppState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentScreen = 0;

  List<Widget> screens = [
    const HomeViewBody(),
    const QRView(),
    const NotificationView(),
    const ProfileView(),
  ];
  void changeBottomNavBar(index) {
    currentScreen = index;
    emit(ChangeNavBarState());
  }
}