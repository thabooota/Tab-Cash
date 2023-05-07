import 'package:flutter/material.dart';
import '../../../../../core/widget/custom_dropdown_button2.dart';

class DropdownButtonView extends StatefulWidget {
  const DropdownButtonView({super.key});

  @override
  State<DropdownButtonView> createState() => _DropdownButtonViewState();
}

class _DropdownButtonViewState extends State<DropdownButtonView> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return CustomDropdownButton2(
      hint: 'باك اند',
      dropdownWidth: double.infinity,
      dropdownItems: items,
      value: selectedValue,
      dropdownElevation: 0,
      buttonWidth: double.infinity,
      icon: const Icon(Icons.arrow_drop_down,size: 30.0,),
      buttonHeight: 50.0,
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}