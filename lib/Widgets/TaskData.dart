import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:todoey/Widgets/Tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Tasks> _taskList = [];
  void add(String entered) {
    _taskList.add(Tasks(task: entered));
    notifyListeners();
  }

  void markAsDone(int index) {
    _taskList[index].toggleIsDone();
    notifyListeners();
  }

  void remove(int index) {
    _taskList.removeAt(index);
    notifyListeners();
  }

  int get length => _taskList.length;

  UnmodifiableListView<Tasks> get taskList => UnmodifiableListView(_taskList);
}
