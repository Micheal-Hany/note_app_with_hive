import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_with_hive/cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app_with_hive/views/add-note-bottom-sheet.dart';
import 'package:note_app_with_hive/views/widgets/notes_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteShowModelButtonSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: NotesViewBody()),
      ),
    );
  }
}
