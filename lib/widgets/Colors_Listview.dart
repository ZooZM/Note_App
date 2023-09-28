
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/cubit/add_cubit/add_notes_cubit.dart';

class Circle_Color extends StatelessWidget {
  const Circle_Color({super.key, required this.ischecked, required this.color});
  final bool ischecked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 5),
      child:   CircleAvatar(
        radius: 24,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: ischecked? 20:24,
          backgroundColor: color,
          
        ),
      ),
    );
  }
}

class ColorsListview extends StatefulWidget {
  const ColorsListview({super.key});

  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {
  int cout =0;

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
              BlocProvider.of<AddNotesCubit>(context).color = kColors[cout];
              setState(() {});
            },
            child: Circle_Color(ischecked: cout == index, color: kColors[index] ,)
            );
        },
      ),
    );
  }
}