import 'package:flutter/material.dart';
import 'package:smartwallet/core/widget/app_bar.dart';
import 'package:smartwallet/features/profile/presentation/views/widgets/contact_us_view_body.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: "Contact Us",centerTitle: true),
      body: ContactUsViewBody(),
    );
  }
}
