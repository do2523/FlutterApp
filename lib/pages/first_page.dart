import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  int _selectedIndex = 0;

  final List _pages = [
    Homepage(),
    Profile(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Docs")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
          label: 'Settings',
          )
        ]),
      // )
    );
    
  }
}