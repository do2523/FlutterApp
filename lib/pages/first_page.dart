import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Docs"),
      backgroundColor: Colors.blue),
      body: Center(
          child: ElevatedButton(
            child: Text("Go to Gemini"),
            onPressed: () {
              Navigator.pushNamed(context, '/secondpage');
            },
          )
      ),
    );
    
  }
}