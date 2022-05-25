import 'package:flutter/material.dart';
import 'package:todoey/Widgets/TaskData.dart';
import 'package:provider/provider.dart';

class ListItems extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function(bool?) callBack;
  final Function() callBack2;
  ListItems(
      {required this.isChecked,
      required this.taskName,
      required this.callBack,
      required this.callBack2});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: callBack2,
        title: Text(
          taskName,
          style: TextStyle(
              fontSize: 20,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlue,
            value: isChecked,
            onChanged: callBack //callBack,
            ));
  }
}
