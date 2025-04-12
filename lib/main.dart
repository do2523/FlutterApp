import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Skeleton Widget
      home: Scaffold(
        body: ListView( 
          children: [
              Container(
              height: 310,
              width: 430,
              color: Colors.blue,
            ),
              Container(
              height: 310,
              width: 430,
              color: Colors.red,
            ),
            Container(
            height: 510,
            width: 430,
            color: Colors.green,
          ),
           
          ])
      ),
    );
  }
}