import 'package:fitnesspal/repository/widgets/dashboardWidgets/thirdpanel/weightPanel/weightpanel.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/thirdpanel/stepspanel/stepspanel.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ThirdPanel extends StatefulWidget {
  const ThirdPanel({super.key});

  @override
  State<ThirdPanel> createState() => _ThirdPanelState();
}

class _ThirdPanelState extends State<ThirdPanel> {
  final PageController _controller = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 316,
          child: PageView(
            padEnds: false,
            controller: _controller,
            children: [Weightpanel(), Stepspanel()],
          ),
        ),

        // smooth controller
        SmoothPageIndicator(
          controller: _controller,
          count: 2,
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
