import 'package:flutter/material.dart';

class CaloriePanelIconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subtitle; 
  final Color iconColor;
  const CaloriePanelIconAndText({
    super.key,
    required this.icon,
    required this.text,
    required this.subtitle,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 30),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: TextStyle(color: Colors.white70, fontSize: 14)),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
