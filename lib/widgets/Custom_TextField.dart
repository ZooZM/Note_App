

import 'package:flutter/material.dart';
import 'package:nots_app/Constns.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {this.onsaved,
      super.key,
      this.text,
      this.maxlines = 1,
      this.counter,
      this.maxlength = 10});

  final String? text;
  final void Function(String?)? onsaved;
  final int maxlines;
  final int maxlength;
  final int? counter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'field is required';
        }else{
          return null;
        }
      },
      onSaved: onsaved,
      
      maxLines: maxlines,
      
      maxLength: maxlength,

      decoration: InputDecoration(

          alignLabelWithHint: true,
          labelText: text,
          labelStyle: const TextStyle(color: kPrimaryColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: enable(),
          focusedBorder: enable(color: kPrimaryColor)
          
          ),
    );
  }
}

OutlineInputBorder enable({color = Colors.white}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: color));
}
