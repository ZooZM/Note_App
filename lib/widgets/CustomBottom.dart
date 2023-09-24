import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({this.ontap, super.key, required this.text});
  final String text;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        height: 50,
        width: double.infinity,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 16,color: Colors.white),
        )),
      ),
    );
  }
}
