import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    emit(NotesInitial());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      notes = notesBox.values.toList();
      
      emit(NotesSuccess());
      
    } catch (e) {
      emit(Notesfailure(errM: e.toString()));
    }
  }
}
