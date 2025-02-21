import 'package:flutter/material.dart';
import 'package:note_app_1/views/note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        NoteView.id: (context) => const NoteView(),
      },
      initialRoute: NoteView.id,
    );
  }
}