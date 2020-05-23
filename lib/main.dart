import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Container(
                color: Colors.lightBlue,
                child: Text('Erik Maide', textAlign: TextAlign.center),
                height: 125.0,
                width: 125.0,
                padding: EdgeInsets.all(42.0)),
          ),
        ),
      ),
    );
  }
}
