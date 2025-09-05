import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularProgressBar extends StatelessWidget {
  final double percent;
  final double radius;
  final double lineWidth;
  final double centretextfontsize;
  final double centretext2fontsize;
  final String centretext;
  final String centretext2;

  const CircularProgressBar({
    super.key,
    required this.percent,
    required this.radius,
    required this.lineWidth,
    required this.centretextfontsize,
    required this.centretext2fontsize,
    required this.centretext,
    required this.centretext2,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: radius,
      animateFromLastPercent: true,
      animation: true,
      backgroundColor: Colors.black,
      lineWidth: lineWidth,
      percent: percent,
      progressColor: Colors.green,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            centretext,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: centretextfontsize,
            ),
          ),
          Text(
            centretext2,
            style: TextStyle(
              color: Colors.white70,
              fontSize: centretext2fontsize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
