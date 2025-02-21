import 'package:flutter/material.dart';
import 'package:note_app_1/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
