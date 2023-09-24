import 'package:flutter/material.dart';
import 'package:nots_app/widgets/CustomBottom.dart';
import 'package:nots_app/widgets/Custom_TextField.dart';

class ShowModelBottomSheet extends StatelessWidget {
  const ShowModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child:  SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 5,),
           CustomTextField(text: 'Title',),
           SizedBox(height: 15,),
           CustomTextField(text: 'Content',MaxLines: 6,Maxlength: 300,),
           SizedBox(height: 25,),
           CustomBottom(text: 'Add')
          ],
        ),
      ),
    );
  }
}