import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    emit(NotesInitial());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      notes = await notesBox.values.toList();
      
      emit(NotesSuccess());
      
    } catch (e) {
      print(e.toString());
      emit(Notesfailure(errM: e.toString()));
    }
  }
}
