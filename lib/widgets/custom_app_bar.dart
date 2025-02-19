import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/custom_search_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
