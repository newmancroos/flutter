import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(new HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp, Material,Center, Text are widgets
    //It gives us ability to add title of the app window
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //otherwise it will show a debug ext in the phone
      // This  mobile screen and title will be the app titile
      title: "Hello Flutter App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Title in Bar"),
          ),
          body: Home()),
    );
  }
}
