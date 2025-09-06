import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstpanelboxes/firstpanelwidgets/caloriepaneliconandtext.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstpanelboxes/firstpanelwidgets/circleprogressindicator.dart';
import 'package:fitnesspal/repository/widgets/headingtext.dart';
import 'package:fitnesspal/repository/widgets/subheadingtext.dart';
import 'package:flutter/material.dart';

class CaloriesPanel extends StatelessWidget {
  const CaloriesPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO: Handle tap
      },
      child: CustomCard(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Title
            HeadingText(heading: "Calories"),
            SizedBox(height: 3),
            SubHeadingText(subHeading: "Remaining = Goal -Food + Exercise"),
            SizedBox(height: 8),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularProgressBar(
                      centretext: "2,190",
                      centretext2: "Remaining",
                      centretext2fontsize: 13,
                      centretextfontsize: 25,
                      radius: 65,
                      lineWidth: 10,
                      percent: 0.4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CaloriePanelIconAndText(
                          icon: Icons.flag,
                          text: "Base Goal",
                          subtitle: "2968",
                          iconColor: Colors.white70,
                        ),
                        SizedBox(height: 5),
                        CaloriePanelIconAndText(
                          icon: Icons.restaurant,
                          text: "Food",
                          subtitle: "0",
                          iconColor: Colors.blue,
                        ),
                        SizedBox(height: 5),
                        CaloriePanelIconAndText(
                          icon: Icons.directions_run,
                          text: "Exercise",
                          subtitle: "0",
                          iconColor: Colors.amber,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
