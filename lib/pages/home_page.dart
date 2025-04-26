import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/components/bottom_nav.dart';
import 'package:flutter_application_1/pages/events_page.dart';
import 'package:flutter_application_1/pages/points_page.dart';

// The main Homepage widget that manages navigation between different pages
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Index to track the currently selected page
  int _selectedIndex = 0;

  // List of pages to display when navigating
  final List<Widget> _pages = [const PointsPage(), const EventsPage()];

  // Function to update the selected index when a bottom nav tab is tapped
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the currently selected page
      body: _pages[_selectedIndex],

      // Custom bottom navigation bar
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      // App bar with a menu icon
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
      ),

      // Set the background color of the entire screen
      backgroundColor: Colors.grey[300],
    );
  }
}
