import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:fitnesspal/repository/widgets/headingtext.dart';
import 'package:fitnesspal/repository/widgets/subheadingtext.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Weightpanel extends StatelessWidget {
  const Weightpanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomCard(
        height: 300,
        width: double.infinity + 20,
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      HeadingText(heading: "Weight"),
                      SubHeadingText(subHeading: "Last 90 Days"),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: Colors.white, size: 30),
                  ),
                ],
              ),
              LineChart(LineChartData( ))
            ],
          ),
        ),
      ),
    );
  }
}
