import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:the_complete_app_by_appbrewery/todoey/models/task_data.dart';

class TodoeyMainScreen extends StatelessWidget {
  static const String todoeyHomeScreenID = 'Todoey';

  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Todoey',
      appWidgetTree: TasksScreen(),
    );
  }
}
