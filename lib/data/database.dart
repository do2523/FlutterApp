class ToDoDatabase {
  List toDoList = []
  // reference box
  final _myBox = Hive.openBox("container box");

  void firstTimeApp() {
    toDoList = [
      ["Play volleyball", false],
      ["Study for CS1 Test", false]
    ];
  }
}