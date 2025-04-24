import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/components/bottom_nav.dart';
import 'package:flutter_application_1/pages/events_page.dart';
import 'package:flutter_application_1/pages/points_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const PointsPage(), const EventsPage()];

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press 
          },
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
