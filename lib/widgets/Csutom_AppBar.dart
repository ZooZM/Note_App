import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Custom_Search_Bottom.dart';

class Csutom_AppBar extends StatelessWidget {
  const Csutom_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 26),),
        Spacer(),
        Custom_Search_Bottom()
      ],
    );
  }
}