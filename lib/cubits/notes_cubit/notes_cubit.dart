import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app_1/constants.dart';
import 'package:note_app_1/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notebox = Hive.box<NoteModel>(kNotesBox);

    notes = notebox.values.toList();
    emit(NotesSuccess());
  }
}
