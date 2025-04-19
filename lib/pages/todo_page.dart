import "package:flutter/material.dart";
import "package:flutter_application_1/pages/components/dialog_box.dart";
import "package:flutter_application_1/pages/components/todo_tile.dart";


class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final _controller = TextEditingController();

  List<List<dynamic>> toDoList = [
      ["make bed", false],
      ["go for  a run", false],
  ];  

  void checkBoxChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void newTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.text = "";
    });
  }
  // void removeTask() {
  //   setState(() {
  //     toDoList.pop([_controller.text, false]);
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
      }
    );
  }

  void removeTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ToDo",
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Color(0xff34A853),
        elevation: 0,
      ),
      floatingActionButton:FloatingActionButton(onPressed: addTask, 
      child: Icon(Icons.add),),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            buttonPressed: (value) => checkBoxChange(value, index),
            removeTask: (context) => removeTask(index),

          );
        }
       
      )
    );
  }
}