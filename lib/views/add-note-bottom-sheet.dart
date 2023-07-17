import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/widgets/custom-button.dart';
import 'package:note_app_with_hive/views/widgets/custom-text-field.dart';

class AddNoteShowModelButtonSheet extends StatelessWidget {
  const AddNoteShowModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child:const Column(
          children: [
            CustomTextFled(hint: 'Title', maxLines: 1),
            CustomTextFled(hint: 'Content', maxLines: 5),
            SizedBox(
              height: 30,
            ),
            CustomButton(),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
