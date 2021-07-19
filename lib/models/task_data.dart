import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'code'),
  ];

  int get taskCount => _tasks.length;
  Task getTask(int idx) => _tasks[idx];

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void flipTask(int idx) {
    _tasks[idx].isDone = !_tasks[idx].isDone;
    notifyListeners();
  }

  void deleteTask(int idx) {
    _tasks.removeAt(idx);
    notifyListeners();
  }
}