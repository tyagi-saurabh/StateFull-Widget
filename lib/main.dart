import 'package:flutter/material.dart';

void main() {
  runApp(
    StateFull(),
  );
}

class StateFull extends StatefulWidget {
  @override
  _StateFullState createState() => _StateFullState();
}

class _StateFullState extends State<StateFull> {
  var counter = 0;
  static const list = ['Flutter', 'is', 'awesome'];
  var displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = list[counter];
      counter = counter <= list.length ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "StateFull Widget",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                displayedString,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              RaisedButton(
                child: Text(
                  "Press me",
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.italic),
                ),
                onPressed: onPressed,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
