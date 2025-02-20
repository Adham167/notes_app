import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/node_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "noteview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      body: NoteViewBody(),
    );
  }
}
