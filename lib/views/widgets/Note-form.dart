import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_with_hive/cubits/Add-Note-cubit/add_note_cubit.dart';
import 'package:note_app_with_hive/models/note-model.dart';
import 'package:note_app_with_hive/views/widgets/color-list-view.dart';
import 'package:note_app_with_hive/views/widgets/custom-button.dart';
import 'package:note_app_with_hive/views/widgets/custom-text-field.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  int? color;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFled(
            hint: 'Title',
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextFled(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ColorListView(),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    NoteModel note = NoteModel(
                        title: title!,
                        subtitle: subTitle!,
                        date: DateTime.now().toString().substring(0, 10),
                        color: BlocProvider.of<AddNoteCubit>(context)
                            .color!
                            .value);

                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
