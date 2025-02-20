import 'package:flutter/material.dart';
import 'package:note_app_1/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final List<Color> colorslist = const [
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.blueAccent,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.blueAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: colorslist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: NoteItem(
                color: colorslist[index],
              ),
            );
          }),
    );
  }
}
