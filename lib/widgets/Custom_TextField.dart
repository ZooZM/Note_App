import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.onChanged,
    super.key,
    this.text,
  });
  final String? text;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
         alignLabelWithHint: true,
    labelText: text,
    labelStyle: const TextStyle(color: Colors.blue),
    
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide:const BorderSide(color: Colors.white)),
        enabledBorder: enable(),
        focusedBorder: enable(color: Colors.blue)
      ),
    );
  }
}

OutlineInputBorder enable({color=Colors.white}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color)
  );
}
