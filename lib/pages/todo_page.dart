import "package:flutter/material.dart";
import "package:flutter_application_1/data/database.dart";
import "package:flutter_application_1/pages/components/dialog_box.dart";
import "package:flutter_application_1/pages/components/todo_tile.dart";
import "package:hive/hive.dart";

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final _myBox = Hive.box('container box');
  final _controller = TextEditingController();
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    // TODO: implement initState
    if (_myBox.get("TODOLIST") == null) {
      db.firstTimeApp();
    } else {
      db.loadData();
    }
    super.initState();
  }

  void checkBoxChange(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void newTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.text = "";
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  // void removeTask() {
  //   setState(() {
  //     db.toDoList.pop([_controller.text, false]);
  //     _controller.text = "";
  //   });
  // }
  void addTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: newTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void removeTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ToDo", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff34A853),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            buttonPressed: (value) => checkBoxChange(value, index),
            removeTask: (context) => removeTask(index),
          );
        },
      ),
    );
  }
}
