import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/components/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal,
      content: Container(
        height: 120,
        child: Column(
          children:[
            TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "New Task",
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              MyButton(text: "Include", onPressed: (){}),
              MyButton(text: "Nevermind", onPressed: (){}),
              ],
          ),
        ),
        ],
        ),
        )
    );
  }
}