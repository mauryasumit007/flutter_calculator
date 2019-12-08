import 'package:flutter/material.dart';
import 'home_page.dart';  // to use outside class


//void main() => runApp(new MaterialApp(home: new Text("Its Sumit here")));        for simple toolbar text
void main() => runApp(new MyApp());

// Two type to inherit class stateless or stateful widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator Flutter",

      home: new HomePage(),   // all ui work will be done in class Homepage

      // App theme will be defined in this class only
      theme: new ThemeData(
          primarySwatch: Colors.red,    // means primary color
          brightness: Brightness.light,     // set the color theme for toolbar color
          accentColor: Colors.redAccent
      ),



    );
  }
}





