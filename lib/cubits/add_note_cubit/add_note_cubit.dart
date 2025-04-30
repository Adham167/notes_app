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
      emit(AddNoteSuccess());
      await notebox.add(note);
    } catch (e) {
    AddNoteFailure(e.toString());
    }
  }
}
