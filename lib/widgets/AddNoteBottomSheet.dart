import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubit/add_cubit/add_notes_cubit.dart';
import 'package:nots_app/widgets/addnoteform.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesfailure) {
            print('failuer: ${state.erMes}');
          }
          if (State is AddNotesSuccess) {
            Navigator.pop(context);
          }
          
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteslouding? true:false,
            child: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const addnoteform(),
            ));
        },
      ),
    );
  }
}