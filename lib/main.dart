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
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("My App Bar! "),
          backgroundColor: Colors.red,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
        ),
        body: Center ( 
          child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration( 
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          ),
          child: Center( 
            child:Icon(
              Icons.favorite,
              color: Colors.white,
              size: 32,
            )

          ),
          )
      ),
      ),
    );
  }
}