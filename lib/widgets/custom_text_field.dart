import 'package:flutter/material.dart';
import 'package:note_app_1/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.Maxline = 1});
  final String hint;
  final int Maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: Maxline,
      decoration: InputDecoration(
        hintText: hint,
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
