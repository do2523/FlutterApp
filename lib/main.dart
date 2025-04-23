// Import the Flutter material design package
import 'package:flutter/material.dart';

// Import the custom IntroPage widget from your pages directory
import 'package:flutter_application_1/pages/Intro_page.dart';

// Entry point of the Flutter app
void main() {
  runApp(const MyApp()); // Runs the app using the MyApp widget as the root
}

// Define a stateless widget called MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor with optional key for widget identity

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, // Hides the debug banner in the top-right corner
      home: IntroPage(), // Sets IntroPage as the home (first) screen of the app
    );
  }
}
