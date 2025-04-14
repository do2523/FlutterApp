import "package:flutter/material.dart";


class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  void greetUser() {
    setState(() {
      greetingMessage = "Hello " + myController.text;

    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name...",
                ),
          ),
          
          ElevatedButton(onPressed: greetUser, child: Text("Tap for a greeting")),
            ]
            
          ),
        )
        
      )
    );
  }
}