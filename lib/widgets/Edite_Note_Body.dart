import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Csutom_AppBar.dart';
import 'package:nots_app/widgets/CustomBottom.dart';
import 'package:nots_app/widgets/Custom_TextField.dart';

class EditeNoteBody extends StatelessWidget {
  const EditeNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Csutom_AppBar(
            title: 'Edite Note',
            icon: Icon(Icons.check),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            text: 'Title',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            text: 'Content',
            maxlines: 6,
            maxlength: 600,
          ),
          SizedBox(height: 20,),
          CustomBottom(text: 'Edite')
        ],
      ),
    );
  }
}
