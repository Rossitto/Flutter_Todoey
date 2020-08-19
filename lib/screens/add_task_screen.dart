import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  // TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color.fromARGB(255, 117, 117, 117),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextField(
                // controller: textController,
                onChanged: (newText) => newTaskTitle = newText,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 5.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent[400],
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: FlatButton(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  disabledColor: Colors.lightBlueAccent,
                  color: Colors.lightBlueAccent[400],
                  onPressed: () {
                    addTaskCallback(newTaskTitle);
                    // textController.clear();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
