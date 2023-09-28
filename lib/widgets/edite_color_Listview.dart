

import 'package:flutter/material.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/widgets/Colors_Listview.dart';

class EditeColorListview extends StatefulWidget {
  const EditeColorListview({super.key,required this.note});
  final NoteModel note;
  @override
  State<EditeColorListview> createState() => _EditeColorListviewState();
}

class _EditeColorListviewState extends State<EditeColorListview> {
  late int cout;

  @override
  void initState() {
    cout=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount:kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              cout = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: Circle_Color(ischecked: cout == index, color: kColors[index] ,)
            );
        },
      ),
    );
  }
}