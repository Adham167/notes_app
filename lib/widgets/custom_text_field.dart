import 'package:flutter/material.dart';
import 'package:note_app_1/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.Maxline = 1, this.onSaved});
  final String hint;
  final int Maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: Maxline,
      decoration: InputDecoration(
        hintText: hint,
        border: Build_border(),
        enabledBorder: Build_border(),
        focusedBorder: Build_border(kPrimaryColor),
      ),
    );
  }

  // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
  OutlineInputBorder Build_border([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
