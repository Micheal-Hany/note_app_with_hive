import 'package:flutter/material.dart';
import 'package:note_app_with_hive/constants.dart';

class CustomTextFled extends StatelessWidget {
  const CustomTextFled(
      {required this.hint, required this.maxLines, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return ' Filed id required';
          }
          return null;
        },
        onSaved: onSaved,
        maxLines: maxLines,
        cursorColor: kprimarycolor,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: kprimarycolor, fontSize: 18),
            enabledBorder: builedBorder(),
            errorBorder: builedBorder(),
            border: builedBorder(),
            focusedBorder: builedBorder(kprimarycolor)),
      ),
    );
  }

  OutlineInputBorder builedBorder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ));
  }
}
