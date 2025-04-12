import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Skeleton Widget
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            print("Googleplex");
          },
          child: Center(
          child: Container(
          height: 300,
          width: 300,
          color: Colors.green,
          child: Center(child: Text("Google"))
        )
      ),
      ),
      ),
    );
  }
}