import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
      create: (context) => Tasks(),
      // builder: (context) => Tasks(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class Tasks extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(String newTaskTitle) {
    Task newTask = Task(name: newTaskTitle);
    tasks.add(newTask);
    notifyListeners();
  }
}
