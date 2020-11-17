import 'package:flutter/foundation.dart';
import 'package:the_complete_app_by_appbrewery/todoey/models/tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Cheese'),
    Task(name: 'Buy eggs'),
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String newTaskName) {
    final newTask = Task(name: newTaskName);
    _tasks.add(newTask);
    notifyListeners();
  }

  void toggleTaskState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
