import 'package:flutter/material.dart';
import 'package:note_app_1/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text("Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 25)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  "Build your career with Tharwat Samy",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                "May21, 2022",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
