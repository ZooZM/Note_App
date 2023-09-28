import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/cubit/add_cubit/add_notes_cubit.dart';
import 'package:nots_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:nots_app/widgets/Colors_Listview.dart';
import 'package:nots_app/widgets/CustomBottom.dart';
import 'package:nots_app/widgets/Custom_TextField.dart';

class addnoteform extends StatefulWidget {
  const addnoteform({super.key});

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode? autovalidateMode;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                text: 'Title',
                onsaved: (p0) {
                  title = p0;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                text: 'Content',
                maxlines: 6,
                maxlength: 600,
                onsaved: (p0) {
                  subtitle = p0;
                },
              ),
              ColorsListview(),
              const SizedBox(
                height: 25,
              ),
              BlocBuilder<AddNotesCubit, AddNotesState>(
                builder: (context, state) {
                  var formatdate= DateFormat("yyyy-MM-dd").format(DateTime.now());
                  return CustomBottom(
                    islouding: state is AddNoteslouding ? true : false,
                    text: 'Add',
                    ontap: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        var note = NoteModel(
                            title: title!,
                            subtitle: subtitle!,
                            date: formatdate.toString(),
                            color: Colors.blue.value );

                        BlocProvider.of<AddNotesCubit>(context).addNote(note);
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                        Navigator.pop(context);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              )
            ],
          ),
        ));
  }
}
