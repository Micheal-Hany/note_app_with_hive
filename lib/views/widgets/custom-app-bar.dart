import 'package:flutter/material.dart';
import 'package:note_app_with_hive/views/widgets/custom-icon.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Notes',
              style: TextStyle(fontSize: 29),
            ),
            CustomSearchIcon(icon: Icons.search, color: Colors.white),
          ],
        ),
      ],
    );
  }
}
