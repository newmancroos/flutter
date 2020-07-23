import 'package:flutter/material.dart';

void main() {
  runApp(
      //MaterialApp, Material,Center, Text are widgets
      MaterialApp(
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
  )); //It gives us ability to add title of the app window
}
