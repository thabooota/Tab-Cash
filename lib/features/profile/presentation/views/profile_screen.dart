import 'package:flutter/material.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widget/app_bar.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ProfileViewBody()),
    );
  }
}
