import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:the_complete_app_by_appbrewery/todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallBack: (checkboxState) {
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
