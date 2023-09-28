import 'package:flutter/material.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/widgets/Edite_Note_Body.dart';

class Edite_Note_page extends StatelessWidget {
   Edite_Note_page({super.key,});
  final id='Edite_Note_page';
  @override
  Widget build(BuildContext context) {
    final NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return  Scaffold(
      body: EditeNoteBody(note: note) ,
    );
  }
}