import 'package:flutter/material.dart';
import 'homepage2work.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My Calculator",
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        accentColor: Colors.redAccent,
      ),
    );
  }
}
