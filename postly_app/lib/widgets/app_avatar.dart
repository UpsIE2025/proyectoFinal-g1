import 'package:flutter/material.dart';

const _colors = [
  Colors.pink,
  Colors.deepPurple,
  Colors.deepOrange,
  Colors.brown,
];

class AppAvatar extends StatelessWidget {
  const AppAvatar({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    String firstLetter = "A";
    if (name.isNotEmpty) {
      firstLetter = name[0].toUpperCase();
    }
    return CircleAvatar(
      backgroundColor: _colors[firstLetter.codeUnitAt(0) % 4],
      foregroundColor: Colors.white,
      maxRadius: 15,
      child: Text(firstLetter),
    );
  }
}
