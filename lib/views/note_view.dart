import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/add_note_bottom_sheet.dart';
import 'package:note_app_1/widgets/node_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "noteview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: Icon(Icons.add)),
      body: NoteViewBody(),
    );
  }
}
