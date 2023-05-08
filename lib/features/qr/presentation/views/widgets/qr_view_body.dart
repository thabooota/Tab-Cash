import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class QrViewBody extends StatelessWidget {
  const QrViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Qr Code",style: Styles.textStyle32,));
  }
}
