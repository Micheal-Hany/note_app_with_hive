import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/widgets/custom-app-bar.dart';
import 'package:note_app_with_hive/views/widgets/note-list-view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [CustomAppBar(), Expanded(child: NoteListView())],
    );
  }
}
