import 'package:fitnesspal/repository/screens/notification/notificationscreen.dart';
import 'package:fitnesspal/repository/screens/profile/profile.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/editbutton.dart';
import 'package:fitnesspal/repository/widgets/dashboardWidgets/firstPanel.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
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
                  EditButton(),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(0),
                itemBuilder: (context, index) =>
                    SizedBox(child: Row(children: [const FirstPanel()])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
