import 'package:flutter/material.dart';
import 'package:todolist_app/widgets/todolist.dart';
import 'package:todolist_app/screens/add_taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/model/task_data.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 40,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Let\'s Todo It",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskcount} Task",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: TodoList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen());
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
