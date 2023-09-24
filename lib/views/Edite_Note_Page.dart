import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Edite_Note_Body.dart';

class Edite_Note_page extends StatelessWidget {
  const Edite_Note_page({super.key});
  final id='Edite_Note_page';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditeNoteBody() ,
    );
  }
}