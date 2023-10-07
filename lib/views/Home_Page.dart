import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Noteview.dart';
import 'package:nots_app/widgets/AddNoteBottomSheet.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});
  final id='Home_Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                },
              );
            },
            child: const Icon(Icons.add),
            ),
        body: const SafeArea(child: Noteview()));
  }
}
