import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tasks Page',
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
