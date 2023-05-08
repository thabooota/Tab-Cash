import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smartwallet/core/widget/app_bar.dart';
import 'package:smartwallet/core/widget/custom_text_field.dart';

import '../../../../../core/widget/custom_button.dart';

class CreateChild extends StatelessWidget {
  const CreateChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController idController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController repeatController = TextEditingController();

    return Scaffold(
      appBar: appBar(context, text: "Add New Child", centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
        children: [
          CustomTextField.customTextFormField(
            controller: nameController,
            text: "Name",
            inputType: TextInputType.name,
            validation: (value) {},
            prefixIcon: const Icon(FontAwesomeIcons.solidUser),
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.solidIdCard),
            controller: idController,
            inputType: TextInputType.number,
            validation: (value) {
              return null;
            },
            text: 'National ID',
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.phone),
            controller: phoneController,
            inputType: TextInputType.phone,
            validation: (value) {
              return null;
            },
            text: 'Phone',
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.solidEnvelope),
            controller: emailController,
            inputType: TextInputType.emailAddress,
            validation: (value) {
              return null;
            },
            text: 'Email Address',
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.lock),
            obscure: false,
            controller: passwordController,
            text: 'Password',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility_outlined),
            ),
            inputType: TextInputType.visiblePassword,
            validation: (value) {
              return null;
            },
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomTextField.customTextFormField(
            prefixIcon: const Icon(FontAwesomeIcons.lock),
            obscure: false,
            controller: repeatController,
            text: 'Password',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility_outlined),
            ),
            inputType: TextInputType.visiblePassword,
            validation: (value) {
              return null;
            },
          ),
          const SizedBox(
            height: 30.0,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
                width: 200.0,
                child: CustomButton.customTextButton(
                  text: 'Continue',
                  onPressed: () {
                    // ToDo To Navigation to page to choices the service
                  },
                )),
          ),
        ],
      ),
    );
  }
}
