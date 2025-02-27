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
    this.bordered = false,
    this.maxRadius = 15,
  });

  final String name;
  final String pictureUrl;
  final bool bordered;
  final double maxRadius;

  @override
  Widget build(BuildContext context) {
    if (pictureUrl.isEmpty) {
      return _addBorder(context, buildLetterAvatar(name));
    }
    return _addBorder(
      context,
      CircleAvatar(
        maxRadius: maxRadius,
        child: ClipOval(child: Image.network(pictureUrl)),
      ),
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
      maxRadius: maxRadius,
      child: Text(firstLetter, style: TextStyle(fontSize: maxRadius * 16 / 15)),
    );
  }

  Widget _addBorder(BuildContext context, Widget child) {
    if (!bordered) return child;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: child,
      ),
    );
  }
}
