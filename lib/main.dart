import 'package:flutter/material.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                'images/erik.png',
                width: 142,
                height: 142,
                fit: BoxFit.cover,
              ),
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
            SizedBox(
                height: 20.0,
                width: 333.0,
                child: Divider(color: Colors.teal[100])),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: RaisedButton(
                      onPressed: _launchURL,
                      color: Colors.green,
                      child: Icon(
                        Icons.phone,
                        color: Colors.teal[900],
                        size: 21.0,
                      ),
                    ),
                    title: Center(
                      child: Text(
                        '+37256907318',
                        style: TextStyle(
                            fontSize: 21.0,
                            letterSpacing: 8.0,
                            color: Colors.teal[900],
                            fontFamily: 'SourceSansPro'),
                      ),
                    ))),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: RaisedButton(
                      color: Colors.tealAccent,
                      child: Icon(
                        Icons.email,
                        color: Colors.blue,
                        size: 21.0,
                      ),
                    ),
                    title: Center(
                      child: Text(
                        'erik@maide.works',
                        style: TextStyle(
                            fontSize: 21.0,
                            letterSpacing: 3.5,
                            color: Colors.teal[900],
                            fontFamily: 'SourceSansPro'),
                      ),
                    )))
          ],
        )),
      ),
    );
  }
}

_launchURL() async {
  android_intent.Intent()
    ..setAction(android_action.Action.ACTION_DIAL)
    ..setData(Uri(scheme: "tel", path: "+37256907318"))
    ..startActivity().catchError((e) => print(e));
}
