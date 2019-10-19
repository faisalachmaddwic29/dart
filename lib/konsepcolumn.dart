import 'package:flutter/material.dart';
import 'widgetcontainer.dart';

class KonsepColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("konsep COLUMN"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WidgetCons()));
              },
              child: Text(
                "Container WidgeT",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Text("Text1"),
            Text("Text2"),
            Text("Text3"),
            Text("Text4"),
            Text("Text5"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Text6"),
                    Text("Text7"),
                    Text("Text8"),
                    Text("Text9"),
                    Text("Text10"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Text6"),
                    Text("Text7"),
                    Text("Text8"),
                    Text("Text9"),
                    Text("Text10"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
