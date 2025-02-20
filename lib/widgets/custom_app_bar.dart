import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}
