import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onpressed});
  final String title;
  final Icon icon;
    final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32, color: Colors.white),
        ),
        const Spacer(),
        CustomIcon(
          onpressed: onpressed,
          icon: icon),
      ],
    );
  }
}
