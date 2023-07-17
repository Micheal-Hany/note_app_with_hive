import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/widgets/custom-button.dart';
import 'package:note_app_with_hive/views/widgets/custom-text-field.dart';

class AddNoteShowModelButtonSheet extends StatelessWidget {
  const AddNoteShowModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: const addNoteForm(),
      ),
    );
  }
}

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
            onSaved: (p0) {
              title = p0;
            },
          ),
          CustomTextFled(
            hint: 'Content',
            maxLines: 5,
            onSaved: (p0) {
              subTitle = p0;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
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




// class addNoteForm extends StatefulWidget {
//   const addNoteForm({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<addNoteForm> createState() => _addNoteFormState();
// }

// class _addNoteFormState extends State<addNoteForm> {
//   final formkey = GlobalKey<FormState>(); // Initialize formkey with a new instance of GlobalKey<FormState>
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//   String? title, subTitle;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formkey, // Set the formkey to the Form widget
//       autovalidateMode: autovalidateMode,
//       child: Column(
//         children: [
//           // ...
//         ],
//       ),
//     );
//   }
// }