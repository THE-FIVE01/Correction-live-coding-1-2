import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy Bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskTile: tasks[index].name, 
          isChecked: tasks[index].isDone,
          chexboxCallBack: (bool checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          }
        );
      }, 
      itemCount: tasks.length,
    );
  }
}
