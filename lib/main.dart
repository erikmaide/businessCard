import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                height: double.infinity,
                width: 139.0,
                color: Colors.black,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 23.3,
                    width: 110.0,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 23.3,
                    width: 110.0,
                    color: Colors.black,
                  ),
                  Container(
                    height: 23.3,
                    width: 110.0,
                    color: Colors.white,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                height: double.infinity,
                width: 139.0,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
