import 'package:flutter/foundation.dart';
import 'package:flutter_todo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Finish todo app'),
    Task(name: 'commit todo app'),
    Task(name: 'Finish ecommerce app'),
  ];
  int get taskCount => tasks.length;

  void addTask(String newTask) {
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
