import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  CustomSearchIcon({required this.icon, required this.color});
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(.05),
      ),
      child: IconButton(
          icon: Icon(
            icon,
            color: color,
            size: 28,
          ),
          onPressed: () {}),
    );
  }
}
