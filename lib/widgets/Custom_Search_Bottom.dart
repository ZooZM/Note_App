
import 'package:flutter/material.dart';

class Custom_Search_Bottom extends StatelessWidget {
  const Custom_Search_Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Icon(Icons.search),
    );
  }
}