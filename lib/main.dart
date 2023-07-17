import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/cubits/Add-Note-cubit/add_note_cubit.dart';
import 'package:note_app_with_hive/cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app_with_hive/models/note-model.dart';
import 'package:note_app_with_hive/simple-bloc-observer.dart';
import 'package:note_app_with_hive/views/nots_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:hive/hive.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotesBox);

  runApp(const NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotsView(),
      ),
    );
  }
}
