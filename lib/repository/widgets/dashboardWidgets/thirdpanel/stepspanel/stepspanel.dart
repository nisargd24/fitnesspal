import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:flutter/material.dart';

class Stepspanel extends StatelessWidget {
  const Stepspanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomCard(
        child: Center(child: Text("Nisarg")),
        height: 300,
        width: double.infinity + 20,
      ),
    );
  }
}
