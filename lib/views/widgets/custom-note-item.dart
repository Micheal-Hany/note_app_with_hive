import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/edit-not.dart';
import 'package:note_app_with_hive/views/widgets/custom-icon.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black),
              ),
              trailing: CustomSearchIcon(
                icon: Icons.delete,
                color: Colors.black,
              ),
              titleTextStyle: const TextStyle(fontSize: 24),
              subtitleTextStyle: const TextStyle(fontSize: 16),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Builed your career with flutter with Micheal Hany',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('May21 , 2023',
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
