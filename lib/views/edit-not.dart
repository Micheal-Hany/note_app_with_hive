import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/widgets/Edit-view-body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditNoteViewBody(),);
  }
}
