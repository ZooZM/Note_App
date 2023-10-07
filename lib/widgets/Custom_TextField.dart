

import 'package:flutter/material.dart';
import 'package:nots_app/Constns.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {this.onsaved,
      super.key,
      this.text,
      this.maxlines = 1,
      this.counter,
      this.maxlength = 20,
      this.onChanged, this.cText,
      
      });

  final String? text;
  final void Function(String?)? onsaved;
  final void Function(String)? onChanged;
  final int maxlines;
  final int maxlength;
  final int? counter;
  final String? cText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Set the initial text for the TextField
    _textController.text = widget.cText!;
  }
    return TextFormField(
      controller: _textController,
      onChanged: widget.onChanged ,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'field is required';
        }else{
          return null;
        }
      },
      onSaved: widget.onsaved,
      
      maxLines: widget.maxlines,
      
      maxLength: widget.maxlength,

      decoration: InputDecoration(
          alignLabelWithHint: true,
          labelText: widget.text,
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
