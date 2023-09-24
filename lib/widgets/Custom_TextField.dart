import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.onChanged,super.key, this.text,});
  final String? text;
  final Function(String)? onChanged;
   
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: text,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
