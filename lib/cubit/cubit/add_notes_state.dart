part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNoteslouding extends AddNotesState {}

final class AddNotesSuccess extends AddNotesState {}

final class AddNotesfailure extends AddNotesState {
  final String erMes;
  AddNotesfailure(this.erMes);
}
