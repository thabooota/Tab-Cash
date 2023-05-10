import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widget/custom_button.dart';

class QRView extends StatefulWidget {
  const QRView({Key? key}) : super(key: key);

  @override
  State<QRView> createState() => _QRViewState();
}

class _QRViewState extends State<QRView> {
  late String result;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10.0,
          ),
          // Center(
          //   child: Container(
          //     height: MediaQuery.of(context).size.height * 0.4,
          //     width: MediaQuery.of(context).size.width * 0.8,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: SvgPicture.asset(AssetsManager.qr) as ImageProvider,
          //       ),
          //       border: Border.all(color: ColorManager.defaultColor, width: 2),
          //       borderRadius: BorderRadius.circular(40.0),
          //     ),
          //     child: const SizedBox(),
          //   ),
          // ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                border: Border.all(color: ColorManager.darkDefaultColor, width: 2),
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: SvgPicture.asset(AssetsManager.qr),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton.customTextButton(
            text: 'SCAN NOW',
            onPressed: () {
              scanNow();
            },
            width: 160.0,
          ),
        ],
      ),
    );
  }

  // void scanQRCode() async {
  //   try {
  //     final qrCode = await FlutterBarcodeScanner.scanBarcode(
  //         '#ff6666', 'cancel', true, ScanMode.QR);
  //
  //     if (!mounted) return;
  //
  //     setState(() {
  //       showModalBottomSheet(
  //         context: context,
  //         builder: (context) => Padding(
  //           padding:
  //               const EdgeInsets.symmetric(vertical: 13.0, horizontal: 5.0),
  //           child: SizedBox(
  //             height: MediaQuery.of(context).size.height * 0.3,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 const Text(
  //                   'invoice value : 120 EGP',
  //                   style: Styles.textStyle24,
  //                 ),
  //                 const SizedBox(
  //                   height: 30.0,
  //                 ),
  //                 Text(
  //                   'Transaction Number : 3254886522 ',
  //                   style: Styles.textStyle20.copyWith(color: Colors.black),
  //                 ),
  //                 const SizedBox(
  //                   height: 20.0,
  //                 ),
  //                 CustomButton.customTextButton(
  //                     text: 'Pay', onPressed: () {}, width: 120.0),
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     });
  //   } on PlatformException {
  //     //getResult = 'Failed to scan QR Code.';
  //   }
  // }

  Future<void> scanNow() async {
    await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.QR,
    ).then((value) {
      setState(() {
        result = value;
      });
      print("###############################################");
      print(value);
      // print(value.split('=&@'));
      print("###############################################");
      String payNumber = value.substring(13,23);
      String serviceName = value.substring(33).split("&")[0];
      String price = value.substring(48).split("&")[0];

      if (value.toString() != "-1") {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 13.0, horizontal: 5.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 8.0,),
                  Text(
                    serviceName,
                    style: Styles.textStyle24.copyWith(color: ColorManager.darkDefaultColor),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Price: $price',
                    style: Styles.textStyle20.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Transaction Number: $payNumber',
                    style: Styles.textStyle20.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomButton.customTextButton(
                      text: 'Pay', onPressed: () {}, width: 120.0),
                ],
              ),
            ),
          ),
        );
      }
    }).catchError((e) {
      setState(() {
        result = '';
      });
    });
  }
}
