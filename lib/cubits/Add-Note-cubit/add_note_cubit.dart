import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/models/note-model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xff6DD3CE);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
      print('success');
    } on Exception catch (e) {
      emit(AddNoteFailer(errorMassage: e.toString()));
    }
  }
}
