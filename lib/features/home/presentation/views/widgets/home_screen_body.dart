import 'package:flutter/material.dart';
import 'wallet_services_section.dart';
import 'header_section.dart';
import 'service_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(8.0),
      children: const [
        HeaderSection(),
        SizedBox(
          height: 32.0,
        ),
        ServiceSection(),
        SizedBox(
          height: 15.0,
        ),
        WalletServiceSection(),
      ],
    );
  }
}
