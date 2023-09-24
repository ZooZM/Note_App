import 'package:flutter/material.dart';
import 'package:nots_app/widgets/CustomBottom.dart';
import 'package:nots_app/widgets/Custom_TextField.dart';

class ShowModelBottomSheet extends StatelessWidget {
  const ShowModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child:  Column(
        children: [
         CustomTextField(text: 'Title',),
         SizedBox(height: 15,),
         CustomTextField(text: 'Content',),
         Spacer(),
         CustomBottom(text: 'Add')
        ],
      ),
    );
  }
}