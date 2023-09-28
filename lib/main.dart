import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots_app/Constns.dart';
import 'package:nots_app/Models/Note_Model.dart';
import 'package:nots_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:nots_app/simple_Bloc_Observer.dart';
import 'package:nots_app/views/Edite_Note_Page.dart';
import 'package:nots_app/views/Home_Page.dart';
import 'package:nots_app/views/Splash_Screen.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  
  runApp(const Nots_App());
}

class Nots_App extends StatelessWidget {
  const Nots_App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        routes: {
          const Home_Page().id: (context) => const Home_Page(),
          Edite_Note_page().id: (context) =>  Edite_Note_page(),
          const splash_screen().id:(context) => const splash_screen()
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        initialRoute: const splash_screen().id,
      ),
    );
  }
}
