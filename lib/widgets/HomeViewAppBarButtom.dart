
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/cubit/notes_cubit/notes_cubit.dart';

class HomeViewAppBarButtom extends StatelessWidget {
  const HomeViewAppBarButtom({super.key,required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16)
      ),
      child: IconButton(onPressed: () async {
       await Hive.box<NoteModel>(kNotesBox).clear();
        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
      }, icon: icon),
    );
  }
}