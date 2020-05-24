import 'package:flutter/cupertino.dart';
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
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                      size: 21.0,
                    ),
                    title: Text(
                      '+37256907318',
                      style: TextStyle(
                          fontSize: 21.0,
                          letterSpacing: 3.5,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro'),
                    ))),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[900],
                      size: 21.0,
                    ),
                    title: Text(
                      'erik@maide.works',
                      style: TextStyle(
                          fontSize: 21.0,
                          letterSpacing: 3.5,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro'),
                    )))
          ],
        )),
      ),
    );
  }
}
