import 'package:flutter/material.dart';

bool checkBoxIsChecked = false;

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 tasks',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text('Buy milk'),
                    value: checkBoxIsChecked,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxIsChecked = !checkBoxIsChecked;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Buy eggs'),
                    value: checkBoxIsChecked,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxIsChecked = !checkBoxIsChecked;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Buy bread'),
                    value: checkBoxIsChecked,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxIsChecked = !checkBoxIsChecked;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
