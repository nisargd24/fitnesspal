import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstpanelboxes/firstpanelwidgets/circleprogressindicator.dart';
import 'package:flutter/material.dart';

class MacrosPanel extends StatelessWidget {
  const MacrosPanel({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Title
            Text(
              "Macros",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Carbohydrates",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 88, 226, 95),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: CircularProgressBar(
                          percent: 0,
                          radius: 42,
                          lineWidth: 8,
                          centretextfontsize: 20,
                          centretext2fontsize: 12,
                          centretext: "0",
                          centretext2: "/274g",
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "274g left",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Fat",
                        style: TextStyle(
                          color: Colors.purple[400],
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: CircularProgressBar(
                          percent: 0,
                          radius: 42,
                          lineWidth: 8,
                          centretextfontsize: 20,
                          centretext2fontsize: 12,
                          centretext: "0",
                          centretext2: "/73g",
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "73g left",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Protein",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: CircularProgressBar(
                          percent: 0,
                          radius: 42,
                          lineWidth: 8,
                          centretextfontsize: 20,
                          centretext2fontsize: 12,
                          centretext: "0",
                          centretext2: "/110g",
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "110g left",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
