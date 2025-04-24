import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// A stateless widget that creates a customizable bottom navigation bar
class BottomNavbar extends StatelessWidget {
  // Callback function to handle tab changes
  void Function(int)? onTabChange;

  // Constructor requires the onTabChange callback
  BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adds vertical padding around the navigation bar
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        // Centers the tab items horizontally
        mainAxisAlignment: MainAxisAlignment.center,

        // Default icon/text color for tabs
        color: Colors.grey[400],

        // Color of the icon/text when a tab is active
        activeColor: Colors.grey.shade900,

        // Border that appears around the active tab
        tabActiveBorder: Border.all(color: Colors.grey.shade400),

        // Callback triggered when a different tab is selected
        onTabChange: (value) => onTabChange!(value),

        // Rounds the corners of the tab borders
        tabBorderRadius: 16,

        // Uncomment to add a background color to the active tab
        // tabBackgroundColor: Colors.grey.shade600,

        // List of tabs shown in the navigation bar
        tabs: const [
          GButton(icon: Icons.home, text: 'Home'), // Home tab
          GButton(icon: Icons.search, text: 'Search'), // Search tab
        ],
      ),
    );
  }
}
