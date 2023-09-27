import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:nots_app/views/Edite_Note_Page.dart';

class Note_Card extends StatelessWidget {
  const Note_Card({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(const Edite_Note_page().id);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 24),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: Text(
                    note.title,
                    style: const TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                   note.delete();
                   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                subtitle: Text(
                  note.subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                note.date,
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              )
            ],
          )),
    );
  }
}