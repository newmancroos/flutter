import 'package:flutter/material.dart';

void main() =>  runApp(new HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp, Material,Center, Text are widgets
    //It gives us ability to add title of the app window
    return MaterialApp(
      // This  mobile screen and title will be the app titile
      title: "Hello Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title in Bar"),
        ),
        body: Material(
          // Apply to full screen of the application
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              "Hello Flutter!",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 36.0),
            ),
          ),
        ),
      ),
    );
  }
}
