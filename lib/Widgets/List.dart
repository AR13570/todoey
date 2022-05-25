import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todoey/Widgets/ListItems.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/TaskData.dart';

class ListComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListItems(
                callBack2: () {
                  taskData.remove(index);
                },
                isChecked: taskData.taskList[index].isDone,
                taskName: taskData.taskList[index].task,
                callBack: (passed) {
                  taskData.markAsDone(index);
                });
          },
          itemCount: taskData.taskList.length,
        );
      },
    );
  }
}
