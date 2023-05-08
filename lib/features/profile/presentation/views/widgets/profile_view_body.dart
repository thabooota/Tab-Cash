import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Profile Code",
      style: Styles.textStyle32,
    ));
  }
}
