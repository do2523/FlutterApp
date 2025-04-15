import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  void changeme() {
    print("hi");
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(value: value, onChanged: onChanged),
            Text("Play the guitar",
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ],
        ),
        decoration: BoxDecoration(color: Color(0xff4285F4),
        border: Border.all(),
        borderRadius: BorderRadius.circular(20)
      ),
      ),
    );
  }
}