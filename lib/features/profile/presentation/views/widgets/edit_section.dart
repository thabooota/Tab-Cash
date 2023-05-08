import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'editItem.dart';

class EditSection extends StatelessWidget {
  const EditSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Edit",
          style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize: 22.0),
        ),
        Container(
          height: 0.8,
          color: Colors.grey,
          margin: const EdgeInsets.only(top: 8.0,bottom: 16.0),

        ),
        editItem(
          context,
          text: 'Mohammed Ahmed Abdelstar',
          label: "Full Name",
          icon: FontAwesomeIcons.solidUser,
        ),
        editItem(
          context,
          text: '01050609664',
          label: "Phone Number",
          icon: FontAwesomeIcons.phone,
        ),
        editItem(
          context,
          text: '***********',
          label: "Password",
          icon: FontAwesomeIcons.lock,
        ),
      ],
    );
  }
}
