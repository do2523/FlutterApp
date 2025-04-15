import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Text("Play the guitar"),
        decoration: BoxDecoration(color: Colors.lightBlueAccent)
      ),
    );
  }
}