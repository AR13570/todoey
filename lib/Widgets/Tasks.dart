class Tasks {
  bool isDone;
  final String task;
  Tasks({this.isDone = false, required this.task});
  void toggleIsDone() {
    isDone = !isDone;
  }
}
