import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
 
  final bool isChecked;
  final String taskTile;
  final Function chexboxCallBack;

  TasksTile({this.isChecked, this.taskTile, this.chexboxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.deepOrange,
        value: isChecked,
        onChanged: chexboxCallBack
        ),
      );
  }
}





