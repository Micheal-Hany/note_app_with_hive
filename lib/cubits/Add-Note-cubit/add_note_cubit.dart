import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/models/note-model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailer(errorMassage: e.toString()));
    }
  }
}
