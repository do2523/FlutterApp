// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

// This is the main introductory page of the app
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the page
      backgroundColor: Colors.grey[200],

      // Center the content in the body
      body: Center(
        child: Padding(
          // Add horizontal padding around the column
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            // Center the children vertically
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add padding around the logo image
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ClipRRect(
                  // Round the edges of the image
                  borderRadius: BorderRadius.circular(50),
                  // Display the SHPE UCF logo image
                  child: Image.asset('lib/images/shpeUcfLogo.jpg', height: 240),
                ),
              ),

              // Space between the logo and the text
              const SizedBox(height: 48),

              // Introductory text for the app
              const Text(
                "The all in one SHPE UCF App!",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              // Space between the text and the button
              const SizedBox(height: 48),

              // GestureDetector makes the container tappable
              GestureDetector(
                onTap: () {
                  // Navigate to the Homepage when tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Container(
                  // Style the button container
                  decoration: BoxDecoration(
                    color: Colors.grey[900], // Button background color
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    // Button text
                    child: Text(
                      "Track Points",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
