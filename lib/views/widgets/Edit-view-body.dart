import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app_with_hive/models/note-model.dart';
import 'package:note_app_with_hive/views/widgets/color-list-view.dart';
import 'package:note_app_with_hive/views/widgets/custom-icon.dart';
import 'package:note_app_with_hive/views/widgets/custom-text-field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Edit Note', style: TextStyle(fontSize: 29)),
              CustomSearchIcon(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subtitle = subTitle ?? widget.note.subtitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fatchAllNotes();
                  Navigator.of(context).pop();
                },
                icon: Icons.check,
                color: Colors.white.withOpacity(.5),
              ),
            ],
          ),
        ),
        CustomTextFled(
          hint: widget.note.title,
          maxLines: 1,
          onChanged: (value) {
            title = value;
          },
        ),
        CustomTextFled(
          hint: widget.note.subtitle,
          maxLines: 5,
          onChanged: (value) {
            subTitle = value;
          },
        ),
        EditNopteColorsList(
          note: widget.note,
        )
      ],
    );
  }
}

class EditNopteColorsList extends StatefulWidget {
  EditNopteColorsList({required this.note});
  NoteModel note;
  @override
  State<EditNopteColorsList> createState() => _EditNopteColorsListState();
}

class _EditNopteColorsListState extends State<EditNopteColorsList> {
  @override
  late int currentrIOndex;
  void initState() {
    currentrIOndex = kcolors.indexOf(Color(widget.note.color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolors.length,
        // shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentrIOndex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kcolors[index],
                isActive: currentrIOndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
