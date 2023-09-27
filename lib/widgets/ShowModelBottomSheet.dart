import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/cubit/cubit/add_notes_cubit.dart';
import 'package:nots_app/widgets/CustomBottom.dart';
import 'package:nots_app/widgets/Custom_TextField.dart';

class ShowModelBottomSheet extends StatelessWidget {
  const ShowModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (State is AddNotesSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNotesfailure) {
            print('failuer ${state.erMes}');
          }
        },
        builder: (context, state) {
          return formkey();
        },
      ),
    );
  }
}

class formkey extends StatefulWidget {
  const formkey({super.key});

  @override
  State<formkey> createState() => _formkeyState();
}

class _formkeyState extends State<formkey> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode? autovalidateMode;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
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
                  const SizedBox(
                    height: 25,
                  ),
                  CustomBottom(
                    text: 'Add',
                    ontap: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        var note = NoteModel(
                            title: title!,
                            subtitle: subtitle!,
                            date: DateTime.now().toString(),
                            color: Colors.blue.value);

                        BlocProvider.of<AddNotesCubit>(context).addNote(note);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  )
                ],
              ),
            )));
  }
}
