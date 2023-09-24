import 'package:flutter/material.dart';
import 'package:nots_app/Constns.dart';

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
          color: kPrimaryColor,
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 16,color: Colors.black),
        )),
      ),
    );
  }
}
