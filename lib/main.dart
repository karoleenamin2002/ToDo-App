// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todoapp/widgets/todo-card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDo(),
    );
  }
}

class Task {
  String title;
  bool status;
  Task({required this.title, required this.status});
}

List alltasks = [
  Task(title: "Publish video", status: false),
  Task(title: "Studying English", status: true),
  Task(title: "Gem", status: false),
  Task(title: "Flutter project", status: true),
];

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                    padding: EdgeInsets.all(22),
                    height: double.infinity,
                    color: Colors.amber[100],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          maxLength: 20,
                          decoration: InputDecoration(hintText: "Add new Task"),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "ADD",
                              style: TextStyle(fontSize: 22),
                            ))
                      ],
                    ));
              },isScrollControlled: true);
        },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1),
        elevation: 0,
        title: Text(
          "TO DO APP",
          style: TextStyle(
              fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...alltasks.map((item) =>
                Todocard(vartitle: item.title, doneOrnot: item.status))
          ],
        ),
      ),
    );
  }
}
