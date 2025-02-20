import 'package:flutter/material.dart';
import 'package:note_app_1/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        border: Build_border(),
        enabledBorder: Build_border(),
        focusedBorder: Build_border(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder Build_border([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
