import 'package:flutter/material.dart';
import 'package:nots_app/views/Home_Page.dart';

void main() {
  runApp(const Nots_App());
}
class Nots_App extends StatelessWidget {
  const Nots_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Home_Page() ,
    );
  }
}