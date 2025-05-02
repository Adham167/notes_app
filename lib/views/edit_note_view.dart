import 'package:flutter/material.dart';
import 'package:note_app_1/model/note_model.dart';
import 'package:note_app_1/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        noteModel: noteModel,
      ),
    );
  }
}
