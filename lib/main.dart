import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/erik.png'),
            ),
            Text(
              "Erik Maide",
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 39,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 24,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
