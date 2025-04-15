import "package:flutter/material.dart";
import "package:flutter_application_1/pages/components/todo_tile.dart";


class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(),
        ]
      )
    );
  }
}