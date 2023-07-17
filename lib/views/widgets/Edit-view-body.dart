import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/widgets/custom-icon.dart';
import 'package:note_app_with_hive/views/widgets/custom-text-field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
                icon: Icons.check,
                color: Colors.white.withOpacity(.5),
              ),
            ],
          ),
        ),
        const CustomTextFled(hint: "title", maxLines: 1),
        const CustomTextFled(hint: "content", maxLines: 5),
      ],
    );
  }
}
