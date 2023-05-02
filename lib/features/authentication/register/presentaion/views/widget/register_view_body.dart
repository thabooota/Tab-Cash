import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/widget/custom_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var nationIdController = TextEditingController();
    var phoneIdController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Row(
        //   children: [
        //     customTextField(
        //       prefixIcon: FontAwesomeIcons.person,
        //         obscure: false,
        //         controller: firstNameController,
        //         text: 'First Name'),
        //     customTextField(
        //       prefixIcon: FontAwesomeIcons.person,
        //         obscure: false,
        //         controller: lastNameController,
        //         text: 'Last Name'),
        //   ],
        // ),
        // customTextField(
        //   prefixIcon: FontAwesomeIcons.idCard,
        //     obscure: false,
        //     controller: nationIdController,
        //     text: 'National ID'),
        // customTextField(
        //   prefixIcon: FontAwesomeIcons.phone,
        //     obscure: false,
        //     controller: phoneIdController,
        //     text: 'Phone number'),
        // customTextField(
        //   prefixIcon: FontAwesomeIcons.lock,
        //     obscure: false,
        //     controller: passwordController,
        //     text: 'Password'),
        // customTextField(
        //   prefixIcon: FontAwesomeIcons.lock,
        //     obscure: false,
        //     controller: confirmPasswordController,
        //     text: 'Repeat Password'),
      ],
    );
  }
}
