import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? buttonPressed;
  Function (BuildContext)? removeTask;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.buttonPressed,
    required this.removeTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: removeTask,
              icon: Icons.delete,
              backgroundColor: Colors.red,)
          ]),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Color(0xff4285F4),
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted, 
                onChanged: buttonPressed,),
        
             
          Text(taskName, 
          style: TextStyle(decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none)),
            ],
          ),
        ),
      ),
    );
  }
}
