import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


   DialogBox({super.key,
        required this.controller,
        required this.onSave,
        required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal,
      content: Container(
        height: 120,
        child: Column(
          children:[
            TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "New Task",
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              MyButton(text: "Include", onPressed: onSave),
              MyButton(text: "Nevermind", onPressed: onCancel),
              ],
          ),
        ),
        ],
        ),
        )
    );
  }
}