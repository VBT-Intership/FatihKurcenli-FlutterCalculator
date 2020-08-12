import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double number1;
  double number2;
  double result;
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  sumFunction() {
    setState(() {
      number1 = double.parse(t1.text);
      number2 = double.parse(t2.text);
      result = number1 + number2;
    });
  }

  subFunction() {
    setState(() {
      number1 = double.parse(t1.text);
      number2 = double.parse(t2.text);
      result = number1 - number2;
    });
  }

  mulFunction() {
    setState(() {
      number1 = double.parse(t1.text);
      number2 = double.parse(t2.text);
      result = number1 * number2;
    });
  }

  divFunction() {
    setState(() {
      number1 = double.parse(t1.text);
      number2 = double.parse(t2.text);
      result = number1 / number2;
    });
  }

  clearScreen() {
    setState(() {
      number1 = 0;
      number2 = 0;
      t1.text = "0";
      t2.text = "0";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Result : $result",
              style: new TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the number 1: ",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the number 2: ",
              ),
              controller: t2,
            ),
            new Padding(padding: EdgeInsets.only(top: 4.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: sumFunction,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.redAccent,
                  onPressed: subFunction,
                ),
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.blueAccent,
                  onPressed: mulFunction,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.yellowAccent,
                  onPressed: divFunction,
                ),
              ],
            ),
            new MaterialButton(
              child: new Text("Clear Screen"),
              color: Colors.grey,
              onPressed: clearScreen,
            ),
          ],
        ),
      ),
    );
  }
}
