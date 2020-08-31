import 'package:flutter/material.dart';
import 'package:lesson1/containerwithboxdecorationwidget.dart';
import 'package:lesson1/popupmenubuttonwidget.dart';
import 'package:lesson1/buttonbarwidget.dart';
import 'package:lesson1/inputdecoratorwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          child: Container(
              color: Colors.lightGreen.shade100,
              height: 75.0,
              width: double.infinity,
              child: Center(
                child: Text('Bottom'),
              )),
          preferredSize: Size.fromHeight(75.0),
        ),
        flexibleSpace: SafeArea(
            child: Icon(Icons.photo_camera, size: 75.0, color: Colors.white70)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const ContainerWithBoxDecorationWidget(),
              // Container(color: Colors.blue, width: double.infinity, height: 100.0,)
              const PopupMenuButtonWidget(),
              const ButtonBarWidget(),
              const InputDecoratorWidget()
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }
}
