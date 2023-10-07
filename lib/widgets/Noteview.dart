import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Csutom_AppBar.dart';
import 'package:nots_app/widgets/Note_ListView.dart';

class Noteview extends StatelessWidget {
  const Noteview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
      child: Column(
        children: [
          Csutom_AppBar(
            title: 'Notes',
            icon: Icon(Icons.delete),
          ),
          Expanded(child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: NoteListview(),
          ),
          )
        ],
      ),
    );
  }
}
