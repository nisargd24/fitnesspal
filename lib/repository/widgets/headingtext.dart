import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  final double fontSize;

  const HeadingText({super.key, required this.heading, this.fontSize = 22});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
