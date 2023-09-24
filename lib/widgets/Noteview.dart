import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Csutom_AppBar.dart';
import 'package:nots_app/widgets/Note_ListView.dart';

class Noteview extends StatelessWidget {
  const Noteview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Csutom_AppBar(),
          Expanded(child: NoteListview())
        ],
      ),
    );
  }
}
