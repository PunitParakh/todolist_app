class Task {
  String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void toggleisdone() {
    isDone = !isDone;
  }

  void getname(String newname) {
    name = newname;
  }
}
