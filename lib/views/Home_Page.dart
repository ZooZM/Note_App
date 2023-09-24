import 'package:flutter/material.dart';
import 'package:nots_app/widgets/Noteview.dart';
import 'package:nots_app/widgets/ShowModelBottomSheet.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the key to scaffoldKey if you have one
      // key: scaffoldKey,
      resizeToAvoidBottomInset: true,
        floatingActionButton: FloatingActionButton(
          
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return ShowModelBottomSheet();
                },
              );
            },
            child: Icon(Icons.add),
            ),
        body: const Noteview());
  }
}
