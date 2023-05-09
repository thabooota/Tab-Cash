import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:smartwallet/core/utils/assets_manager.dart';
import 'package:smartwallet/core/utils/color_manager.dart';
import 'package:smartwallet/core/utils/styles.dart';
import 'package:smartwallet/core/widget/custom_button.dart';
class QRView extends StatefulWidget {
  const QRView({Key? key}) : super(key: key);

  @override
  State<QRView> createState() => _QRViewState();
}

class _QRViewState extends State<QRView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetsManager.scanQrPhoto)),
                border: Border.all(color: ColorManager.defaultColor, width: 2),
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton.customTextButton(
              text: 'SCAN',
              onPressed: () {
                setState(() {
                  scanQRCode();
                });
              },
              width: 160.0)
        ],
      ),
    );
  }

  void scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);

      if (!mounted) return;

      setState(() {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 5.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'invoice value : 120 EGP',
                    style: Styles.textStyle24,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                   Text('Transaction Number : 3254886522 ', style:  Styles.textStyle20.copyWith(color: Colors.black),),
                  const SizedBox(height: 20.0,),
                  CustomButton.customTextButton(text: 'Pay', onPressed: (){}, width: 120.0),
                ],
              ),
            ),
          ),
        );
      });
    } on PlatformException {
      //getResult = 'Failed to scan QR Code.';
    }
  }
}
