import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/custom_botton.dart';
import 'package:note_app_1/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Content",
              Maxline: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomBotton(),
          ],
        ),
      ),
    );
  }
}