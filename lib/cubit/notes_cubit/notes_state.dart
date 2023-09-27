part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {}

final class Notesfailure extends NotesState 
{
  final String errM;

  Notesfailure({required this.errM});

}
