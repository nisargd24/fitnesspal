import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:flutter/material.dart';

class FirstPanel extends StatelessWidget {
  const FirstPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Calories",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
