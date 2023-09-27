import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fitchNotes(){
   Box<NoteModel> notebox= Hive.box(kNotesBox);
    notes= notebox.values.toList();
   
  }
}
