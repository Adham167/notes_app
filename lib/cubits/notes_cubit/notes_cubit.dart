import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_1/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
