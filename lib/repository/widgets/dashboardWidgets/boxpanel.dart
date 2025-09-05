import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:flutter/material.dart';

class BoxPanel extends StatelessWidget {
  final double fontsize = 18;
  final String title;
  final Widget child;
  const BoxPanel({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 250,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
