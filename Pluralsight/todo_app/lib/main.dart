import 'package:flutter/material.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:todo_app/util/dbhelper.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/screens/todolist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // //Just for insert
    // List<Todo> todos = List<Todo>();
    // DbHelper helper = DbHelper();
    // helper
    //     .initializeDb()
    //     .then((result) => helper.getTodos().then((result) => todos = result));
    // DateTime today = DateTime.now();
    // Todo todo =
    //     Todo("Buy Apples", 1, today.toString(), "And make sure they are good");
    // helper.insertTodo(todo);
    // todo = Todo("Buy mango", 2, today.toString(), "in Kelos");
    // helper.insertTodo(todo);
    // todo = Todo(
    //     "Car to Service", 3, today.toString(), "check the insurance cover");
    // helper.insertTodo(todo);
    // //-------------------------
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todos',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Todos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TodoList(),
    );
  }
}
