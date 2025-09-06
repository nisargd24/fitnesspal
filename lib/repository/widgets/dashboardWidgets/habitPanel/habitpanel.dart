import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/editbutton.dart';
import 'package:fitnesspal/repository/widgets/headingtext.dart';
import 'package:fitnesspal/repository/widgets/subheadingtext.dart';
import 'package:flutter/material.dart';

class HabitPanel extends StatelessWidget {
  const HabitPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle habit panel tap
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomCard(
          padding: 0,
          height: 130,
          width: double.infinity,

          child: Stack(
            children: [
              Positioned(
                right: -50,
                top: -20,

                child: Transform.rotate(
                  angle: 90 * 3.1416 / 180,
                  child: Image.asset(
                    "assets/image/confetti.png",
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              Positioned(
                top: 05,
                right: 05,
                child: SizedBox(
                  height: 20,
                  width: 45,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: Text(
                          "BETA",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(heading: "Choose your next habit"),
                        SubHeadingText(
                          subHeading: "Big goals start with small habits.",
                        ),
                      ],
                    ),
                    EditButton(
                      buttonText: "Start a habit",
                      onPressed: () {
                        // Handle edit button press
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
