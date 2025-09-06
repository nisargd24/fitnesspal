import 'package:fitnesspal/repository/screens/notification/notificationscreen.dart';
import 'package:fitnesspal/repository/screens/profile/profile.dart';
import 'package:fitnesspal/repository/widgets/card/card.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/editbutton.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel/firstPanel.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/habitPanel/habitPanel.dart';
import 'package:fitnesspal/repository/widgets/headingtext.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final boxwidth = screenWidth / 2 - 10; // Adjusted for padding

    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory, // 🚫 removes tap ripple
          highlightColor: Colors.transparent, // 🚫 removes highlight glow
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {
            // TODO: Handle navigation
          },
          type: BottomNavigationBarType.fixed,

          showSelectedLabels: false,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          enableFeedback: false,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard, size: 30),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books, size: 30),
              label: 'Diary',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, color: Colors.blue, size: 60),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart_outlined, size: 30),
              label: 'Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined, size: 30),
              label: 'More',
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,

      body: CustomScrollView(
        slivers: <Widget>[
          // App Bar
          SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: Colors.black,
            title: const Text(
              'myfitnesspal',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              icon: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white, size: 24),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const NotificationScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                            // Slide transition for the notification screen
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            final tween = Tween(begin: begin, end: end);
                            final offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                    ),
                  );
                },
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          //Main Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  EditButton(
                    buttonText: "Edit",
                    onPressed: () {
                      // Handle edit button press
                    },
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(child: FirstPanel()),
          SliverToBoxAdapter(child: HabitPanel()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle tap on Steps card
                    },
                    child: CustomCard(
                      height: 150,
                      width: boxwidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(heading: "Steps", fontSize: 20),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.directions_walk,
                                    color: const Color.fromARGB(
                                      255,
                                      218,
                                      80,
                                      80,
                                    ),
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "10,000",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        218,
                                        80,
                                        80,
                                      ),
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle tap on Exercise card
                    },
                    child: CustomCard(
                      padding: 0,
                      height: 150,
                      width: boxwidth,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 12,
                          right: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                children: [
                                  HeadingText(
                                    heading: "Exercise",
                                    fontSize: 20,
                                  ),
                                  Spacer(),
                                  IconButton(
                                    constraints: BoxConstraints(
                                      maxWidth: 40,
                                      maxHeight: 40,
                                    ),
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      // Handle add exercise
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.directions_run,
                                  color: const Color.fromARGB(
                                    255,
                                    80,
                                    218,
                                    104,
                                  ),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "0 cal",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  color: const Color.fromARGB(
                                    255,
                                    80,
                                    218,
                                    104,
                                  ),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "0:00 hr",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
