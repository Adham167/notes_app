import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_1/constants.dart';
import 'package:note_app_1/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_1/model/note_model.dart';
import 'package:note_app_1/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          NoteView.id: (context) => const NoteView(),
        },
        initialRoute: NoteView.id,
      ),
    );
  }
}
