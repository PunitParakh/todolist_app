import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/model/task_data.dart';
import 'package:todolist_app/screens/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => TaskData(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Let\'s Todo It',
        home: TodoApp(),
      ),
    );
  }
}
