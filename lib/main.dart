import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/views/Edite_Note_Page.dart';
import 'package:nots_app/views/Home_Page.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(kNotesBox);
  runApp(const Nots_App());
}
class Nots_App extends StatelessWidget {
  const Nots_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        const Home_Page().id : (context) => const Home_Page(),
        const Edite_Note_page().id:(context) => const Edite_Note_page()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      initialRoute: const Home_Page().id,
    );
  }
}