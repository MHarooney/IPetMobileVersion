import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      onChanged: print,
      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
      initialSelection: 'EG',
      favorite: ['+20', 'EG'],
      countryFilter: ['IT', 'FR', 'EG', 'GE', 'NL'],
      showFlagDialog: false,
      comparator: (a, b) => b.name.compareTo(a.name),
      //Get the country information relevant to the initial selection
      onInit: (code) =>
          print("on init ${code.name} ${code.dialCode} ${code.name}"),
    );
  }
}
