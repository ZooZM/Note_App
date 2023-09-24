
import 'package:flutter/material.dart';

class Custom_AppBar_Bottom extends StatelessWidget {
  const Custom_AppBar_Bottom({super.key,required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16)
      ),
      child: icon,
    );
  }
}