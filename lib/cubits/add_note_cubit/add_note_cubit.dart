import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app_1/constants.dart';
import 'package:note_app_1/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);

      await notebox.add(note);
      log("note added Successfully  $note.title");
      emit(AddNoteSuccess());
    } catch (e) {
      log("add note cubit \n note failure");
      emit(AddNoteFailure(e.toString()));
    }
  }
}
