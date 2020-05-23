import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  color: Colors.lightBlue,
                  child: Text('Container 1'),
                  height: 125.0,
                  width: 125.0),
              Container(
                width: 125.0,
                height: 125.0,
                color: Colors.black,
                child: Text(
                  'Container 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 125.0,
                height: 125.0,
                color: Colors.white,
                child: Text('Container 3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
