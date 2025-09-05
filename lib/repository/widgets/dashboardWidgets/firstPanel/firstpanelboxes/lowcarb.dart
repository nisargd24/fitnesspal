import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/linearbarwidget.dart';
import 'package:flutter/material.dart';

class LowcarbPanel extends StatelessWidget {
  const LowcarbPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO: Handle tap
      },
      child: CustomCard(
        height: double.infinity,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Title
            Text(
              "Low Carb",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LinearBarWidget(
                  percent: 0.5,
                  label: "Carbohydrates",
                  goal: "274g",
                  current: "0",
                  progressColor: Colors.blue,
                ),
                SizedBox(height: 15),
                LinearBarWidget(
                  percent: 0.5,
                  label: "Sugar",
                  goal: "82g",
                  current: "0",
                  progressColor: Colors.blue,
                ),
                SizedBox(height: 15),
                LinearBarWidget(
                  percent: 0.5,
                  label: "Fiber",
                  goal: "38g",
                  current: "0",
                  progressColor: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
