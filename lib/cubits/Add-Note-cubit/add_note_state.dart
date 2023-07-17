// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_note_cubit.dart';


abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailer extends AddNoteState {
 final String errorMassage;
  AddNoteFailer({
    required this.errorMassage,
  });
}
