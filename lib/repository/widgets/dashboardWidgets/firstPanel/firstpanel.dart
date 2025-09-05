import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstpanelboxes/hearthealthy.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstpanelboxes/lowcarb.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstpanelboxes/macros.dart';
import 'package:flutter/material.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstpanelboxes/calories.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstPanel extends StatefulWidget {
  const FirstPanel({super.key});

  @override
  State<FirstPanel> createState() => _FirstPanelState();
}

class _FirstPanelState extends State<FirstPanel> {
  final PageController _controller = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView(
            controller: _controller,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 3.0, left: 3.0),
                child: CaloriesPanel(),
              ),
              Padding(
                padding: EdgeInsets.only(right: 3.0, left: 3.0),
                child: MacrosPanel(),
              ),
              Padding(
                padding: EdgeInsets.only(right: 3.0, left: 3.0),
                child: HeartHealthyPanel(),
              ),
              Padding(
                padding: EdgeInsets.only(right: 3.0, left: 3.0),
                child: LowcarbPanel(),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // 🔹 Smooth page indicator
        SmoothPageIndicator(
          controller: _controller,
          count: 4,
          effect: ColorTransitionEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: Colors.blue,
            dotColor: Colors.white24,
          ),
        ),
      ],
    );
  }
}
