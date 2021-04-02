import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkedBoxCallback;
  final Function deleteTaskCallback;
  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkedBoxCallback,
      this.deleteTaskCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkedBoxCallback,
      ),
    );
  }
}
