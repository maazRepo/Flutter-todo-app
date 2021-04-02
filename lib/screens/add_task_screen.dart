import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
