import 'package:flutter/material.dart';

const _colors = [
  Colors.pink,
  Colors.deepPurple,
  Colors.deepOrange,
  Colors.brown,
];

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    super.key,
    required this.name,
    required this.pictureUrl,
  });

  final String name;
  final String pictureUrl;

  @override
  Widget build(BuildContext context) {
    if (pictureUrl.isEmpty) {
      return buildLetterAvatar(name);
    }
    return CircleAvatar(
      maxRadius: 15,
      child: ClipOval(child: Image.network(pictureUrl)),
    );
  }

  Widget buildLetterAvatar(String name) {
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
