import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/custom_app_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(title: "Edit Note", icon: Icon(Icons.check)),
        ],
      ),
    );
    ;
  }
}
