import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/custom_app_bar.dart';
import 'package:note_app_1/widgets/note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CostumAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}
