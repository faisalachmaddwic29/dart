import 'package:flutter/material.dart';
import 'imagewidget.dart';

class Stacks extends StatelessWidget {
  List<Widget> texts = [];

  Stacks() {
    for (int i = 0; i <= 20; i++) {
      texts.add(Container(
        margin: EdgeInsets.all(20),
        child: Text(
          "Ini adalah Lapisan Tengah ke" + i.toString(),
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align dan Stack"),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black54,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          // Bakcground
          ListView(
            children: <Widget>[
              Column(
                children: texts,
              )
            ],
            // children: <Widget>[Column(children: texts)],
          ),
          // Listview & Text
          Align(
            alignment: Alignment(0.9, 0.9),
            child: RaisedButton(
              child: Text("My Buttons"),
              color: Colors.red,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Images()));
              },
            ),
          )
          // Button
        ],
      ),
    );
  }
}
