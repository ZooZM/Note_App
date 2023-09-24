import 'package:flutter/material.dart';
import 'package:nots_app/Screens/Home_Page.dart';

void main() {
  runApp(const Nots_App());
}
class Nots_App extends StatelessWidget {
  const Nots_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page() ,
    );
  }
}