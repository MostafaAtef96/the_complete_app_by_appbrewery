import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function deleteTaskCallBack;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallBack,
      this.deleteTaskCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
