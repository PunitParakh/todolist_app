import 'package:flutter/material.dart';
import 'package:todolist_app/model/task_data.dart';
import 'package:todolist_app/widgets/todolisttile.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TodolistTitle(
              name: task.name,
              isdone: task.isDone,
              checkboxcallback: (newValue) {
                taskData.updatelist(task);
              },
              longpresscallback: () {
                taskData.deletelist(task);
              },
            );
          },
          itemCount: taskData.taskcount,
        );
      },
    );
  }
}
