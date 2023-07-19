import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_with_hive/cubits/Add-Note-cubit/add_note_cubit.dart';
import 'package:note_app_with_hive/cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app_with_hive/views/widgets/Note-form.dart';

class AddNoteShowModelButtonSheet extends StatelessWidget {
  AddNoteShowModelButtonSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubit(),
        child: Container(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                BlocProvider.of<NotesCubit>(context).fatchAllNotes();
                Navigator.pop(context);
              } else if (state is AddNoteFailer) {
                print('Filed --------> ${state.errorMassage}');
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                  absorbing: state is AddNoteLoading ? true : false,
                  child: Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child:
                          const SingleChildScrollView(child: addNoteForm())));
            },
          ),
        ));
  }
}

