import 'package:flutter/foundation.dart';
import 'package:the_complete_app_by_appbrewery/todoey/models/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];
}
