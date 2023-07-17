import 'package:flutter/material.dart';
import 'package:note_app_with_hive/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: Kprimarycolor, borderRadius: BorderRadius.circular(10)),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}