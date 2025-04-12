import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void onUserTap() {
    print("Googleplex");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Skeleton Widget
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            onUserTap();
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