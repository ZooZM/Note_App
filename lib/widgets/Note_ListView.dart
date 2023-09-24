
import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Custom_container.dart';

class NoteListview extends StatelessWidget {
  const NoteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Custom_Container(),
        );
      },
    );
  }
}
