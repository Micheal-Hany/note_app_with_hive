import 'package:flutter/material.dart';
import 'package:note_app_with_hive/models/note-model.dart';
import 'package:note_app_with_hive/views/widgets/Edit-view-body.dart';

class EditNote extends StatelessWidget {
  const EditNote({required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note),
    );
  }
}
