import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_1/constants.dart';
import 'package:note_app_1/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_1/model/note_model.dart';
import 'package:note_app_1/simple_bloc_observer.dart';
import 'package:note_app_1/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
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
