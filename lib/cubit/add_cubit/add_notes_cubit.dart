import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  
   Color color=const Color(0xFFE57373);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesInitial());
    try {
      Box<NoteModel> notebox = Hive.box<NoteModel>(kNotesBox);
     await notebox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
     emit(AddNotesfailure(e.toString()));
    }
  }
}
