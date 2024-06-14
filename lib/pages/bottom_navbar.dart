import 'package:flutter/material.dart';
import 'package:pijar_app/pages/content/activity_screen.dart';
import 'package:pijar_app/pages/content/home_screen.dart';
import 'package:pijar_app/pages/content/notification_screen.dart';
import 'package:pijar_app/pages/content/profile_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ActivityScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BottomNavigationBar(
                    onTap: _onItemTapped,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.event),
                        label: "Activity",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.notifications),
                        label: "Notifications",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: "Profile",
                      ),
                    ],
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.grey.shade500,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    currentIndex: _selectedIndex,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
