import 'package:flutter/material.dart';
import 'package:nots_app/Constns.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {this.onChanged,
      super.key,
      this.text,
      this.MaxLines = 1,
      this.counter,
      this.Maxlength = 10});

  final String? text;
  final Function(String)? onChanged;
  final int MaxLines;
  final int Maxlength;
  final int? counter;

  @override
  Widget build(BuildContext context) {
    return TextField(

      maxLines: MaxLines,
      onChanged: onChanged,
      maxLength: Maxlength,

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
