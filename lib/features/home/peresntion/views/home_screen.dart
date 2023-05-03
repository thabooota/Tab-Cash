import 'package:flutter/material.dart';
import 'package:smartwallet/features/home/peresntion/views/widgets/home_screen_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
