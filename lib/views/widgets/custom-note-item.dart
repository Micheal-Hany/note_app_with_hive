import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_with_hive/cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app_with_hive/models/note-model.dart';
import 'package:note_app_with_hive/views/edit-not.dart';
import 'package:note_app_with_hive/views/widgets/custom-icon.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({required this.notsModel});
  final NoteModel notsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EditNote()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: Color(0xffFFcc80), borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              title: Text(
                notsModel.title,
                style: TextStyle(color: Colors.black),
              ),
              trailing: IconButton(
                  onPressed: () {
                    notsModel.delete();
                    BlocProvider.of<NotesCubit>(context).notes!;
                  },
                  color: Colors.black,
                  icon: const Icon(Icons.delete)),
              titleTextStyle: const TextStyle(fontSize: 24),
              subtitleTextStyle: const TextStyle(fontSize: 16),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  notsModel.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(notsModel.date,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 16)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
