import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:nots_app/widgets/CustomBottom.dart';
import 'package:nots_app/widgets/Custom_TextField.dart';
import 'package:nots_app/widgets/edite_color_Listview.dart';

class EditeNoteBody extends StatefulWidget {
  const EditeNoteBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditeNoteBody> createState() => _EditeNoteBodyState();
}

class _EditeNoteBodyState extends State<EditeNoteBody> {
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Edite Note',style:  TextStyle(fontSize: 26))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              cText: widget.note.title,
              onChanged: (p0) {
                title=p0;
              },
              text: 'Title',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              cText: widget.note.subtitle,
              onChanged: (p0) {
                subtitle=p0;
              },
              text: 'Content',
              maxlines: 6,
              maxlength: 600,
            ),
            EditeColorListview(note: widget.note),
            const SizedBox(height: 20,),
            CustomBottom(text: 'Edite',ontap: () {
              widget.note.title = title?? widget.note.title;
              widget.note.subtitle= subtitle?? widget.note.subtitle;
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },)
          ],
        ),
      ),
    );
  }
}
