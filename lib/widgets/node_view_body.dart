import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/custom_app_bar.dart';
import 'package:note_app_1/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(title: "Notes",icon: Icon(Icons.search),),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
