import 'package:flutter/material.dart';

class TodolistTitle extends StatelessWidget {
  final String name;
  final bool isdone;
  final Function checkboxcallback;
  final Function longpresscallback;

  TodolistTitle(
      {required this.name,
      required this.isdone,
      required this.checkboxcallback,
      required this.longpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => longpresscallback,
      title: Text(name,
          style: TextStyle(
            decoration: isdone ? TextDecoration.lineThrough : null,
          )),
      trailing: Checkbox(
        value: isdone,
        onChanged: (bool) => checkboxcallback(bool),
      ),
    );
  }
}
