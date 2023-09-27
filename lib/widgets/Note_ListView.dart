import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:nots_app/widgets/Custom_container.dart';

class NoteListview extends StatelessWidget {
  const NoteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context, state) {
        List<NoteModel> notes= BlocProvider.of<NotesCubit>(context).notes?? [];
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Custom_Container(note: notes[index]),
            );
          },
        );
      },
    );
  }
}
