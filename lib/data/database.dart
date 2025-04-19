import "package:hive/hive.dart";

class ToDoDatabase {
  List toDoList = [];
  // reference box
  final _myBox = Hive.box("container box");

  void firstTimeApp() {
    toDoList = [
      ["Play volleyball", false],
      ["Study for CS1 Test", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST"); 
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}