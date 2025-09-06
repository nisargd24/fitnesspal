import 'package:flutter/material.dart';

class SubHeadingText extends StatelessWidget {
  final String subHeading;

  const SubHeadingText({super.key, required this.subHeading});

  @override
  Widget build(BuildContext context) {
    return Text(
      subHeading,
      style: TextStyle(color: Colors.white70, fontSize: 14),
    );
  }
}
