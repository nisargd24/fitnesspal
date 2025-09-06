import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  
  const HeadingText({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
