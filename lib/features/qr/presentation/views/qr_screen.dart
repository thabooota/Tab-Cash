import 'package:flutter/material.dart';
import 'package:smartwallet/features/qr/presentation/views/widgets/qr_view_body.dart';

class QRView extends StatelessWidget {
  const QRView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QrViewBody(),
    );
  }
}
