import 'package:todolist_app/model/task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "buy milk!!"),
    Task(name: "buy choclates!!"),
    Task(name: "buy rose!!"),
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updatelist(Task task) {
    task.toggleisdone();
    notifyListeners();
  }

  void deletelist(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  int get taskcount {
    return _tasks.length;
  }

  void addtask(String newName) {
    final task = Task(name: newName);
    _tasks.add(task);
    notifyListeners();
  }
}
