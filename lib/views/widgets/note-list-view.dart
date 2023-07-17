import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_with_hive/cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app_with_hive/cubits/NoteCubit/notes_cubit.dart';

import 'package:note_app_with_hive/models/note-model.dart';
import 'package:note_app_with_hive/views/widgets/custom-note-item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
      
      print(notes.length);
      return ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: NoteItem(
                notsModel: notes[index],
              ));
        },
      );
    });
  }
}
