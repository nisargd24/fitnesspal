import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class LinearBarWidget extends StatelessWidget {
  final double percent;
  final String label;
  final String goal;
  final String current;
  final Color progressColor;
  const LinearBarWidget({
    super.key,
    required this.percent,
    required this.label,
    required this.goal,
    required this.current,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(label, style: TextStyle(color: Colors.white, fontSize: 18)),
            Spacer(),
            Text.rich(
              TextSpan(
                style: const TextStyle(color: Colors.white, fontSize: 18),
                children: [
                  TextSpan(
                    text: current,
                    style: TextStyle(fontWeight: FontWeight.bold), // bold part
                  ),
                  TextSpan(text: "/$goal"),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 6),
        LinearPercentIndicator(
          lineHeight: 12.0,
          width: MediaQuery.of(context).size.width * 0.8,
          animateFromLastPercent: true,
          animation: true,
          percent: 0.0,
          backgroundColor: Colors.black87,
          progressColor: progressColor,
          barRadius: Radius.circular(7),
          padding: EdgeInsets.only(top: 3),
        ),
      ],
    );
  }
}
