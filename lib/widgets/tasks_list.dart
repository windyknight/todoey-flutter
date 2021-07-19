import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, idx) => GestureDetector(
          onLongPress: () {
            taskData.deleteTask(idx);
          },
          child: TaskTile(
            taskTitle: taskData.getTask(idx).name,
            isChecked: taskData.getTask(idx).isDone,
            onChanged: (v) {
              taskData.flipTask(idx);
            },
          ),
        ),
        itemCount: taskData.taskCount,
      ),
    );
  }
}