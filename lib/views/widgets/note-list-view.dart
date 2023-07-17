import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/widgets/custom-note-item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0), child: NoteItem());
      },
    );
  }
}
