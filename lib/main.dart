import "package:flutter/material.dart";
import "package:flutter_application_1/pages/todo_page.dart";
import "package:hive/hive.dart";


void main async {
  // initialize hive
  await Hive.initFlutter();
  // open box
  var box = await Hive.openBox('container box');

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoPage(),
    );
  }
}