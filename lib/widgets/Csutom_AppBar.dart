import 'package:flutter/material.dart';
import 'package:nots_app/widgets/HomeViewAppBarButtom.dart';

class Csutom_AppBar extends StatelessWidget {
  const Csutom_AppBar({super.key,required this.title,required this.icon});
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title ,style: const TextStyle(fontSize: 26),),
       const Spacer(),
        HomeViewAppBarButtom(icon: icon,)
      ],
    );
  }
}