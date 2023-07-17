import 'package:flutter/material.dart';
import 'package:note_app_with_hive/constants.dart';

class CustomTextFled extends StatelessWidget {
  const CustomTextFled({required this.hint, required this.maxLines});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextField(
        maxLines: maxLines,
        cursorColor: Kprimarycolor,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Kprimarycolor, fontSize: 18),
            enabledBorder: builedBorder(),
            focusedBorder: builedBorder(Kprimarycolor)),
      ),
    );
  }

  OutlineInputBorder builedBorder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ));
  }
}
