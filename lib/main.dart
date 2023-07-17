import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/views/nots_view.dart';
// import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesBox);
  runApp(const NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotsView(),
    );
  }
}
