import 'package:flutter/material.dart';



class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.red,
    );
  }
}

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8), child: ColorItem());
      },
    );
  }
}
