import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:the_complete_app_by_appbrewery/todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallBack: (checkboxState) {
                taskData.toggleTaskState(task);
              },
              deleteTaskCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasksCount,
        );
      },
    );
  }
}
