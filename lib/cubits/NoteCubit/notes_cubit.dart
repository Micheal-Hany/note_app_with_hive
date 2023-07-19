import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/models/note-model.dart';

part 'notes_state.dart';


class NotesCubit extends Cubit<NotesState> {
List<NoteModel>? notes;

  NotesCubit() : super(NotesInitial());
  fatchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(knotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());

    print('----------${notes!.length} ------------------success');
  }
}
